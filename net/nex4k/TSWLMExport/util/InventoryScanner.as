import com.Utils.LDBFormat;
import com.Utils.Signal;
import com.GameInterface.Inventory;
import com.GameInterface.InventoryItem;
import com.GameInterface.DistributedValue;

import net.nex4k.data.LairData;
import net.nex4k.data.lairs.*;

class net.nex4k.TSWLMExport.util.InventoryScanner
{
	private var m_locale:String;
	private var m_inventories:Array;
	private var m_scannerActive:Boolean = false;
	
	private var m_stats:Object;
	private var m_stats_calculated:Boolean = false;
	private var m_lairFragments:Object;
	private var m_regionalFragments:Object;
	
	public var SignalChanged:Signal;
	
	public function InventoryScanner()
	{
		this.m_locale = com.Utils.LDBFormat.GetCurrentLanguageCode();
		this.SignalChanged = new Signal();
		this.m_scannerActive = true;
	}
	
	public function setInventories(inventories:Array)
	{
		this.m_inventories = inventories;
		
		if(this.m_scannerActive)
		{
			this.hook();
		}
		
		callbackInventoryChanged();
	}
	
	public function isActive()
	{
		return this.m_scannerActive;
	}
	
	public function activate()
	{
		this.m_scannerActive = true;
		this.hook();
		this.rescanInventories();
	}
	
	public function deactivate()
	{
		this.m_scannerActive = false;
		this.unhook();
	}
	
	private function hook()
	{
		for(var i=0; i<this.m_inventories.length; i++)
		{
			this.m_inventories[i].SignalItemLoaded.Connect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemAdded.Connect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemMoved.Connect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemRemoved.Connect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemChanged.Connect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemStatChanged.Connect(callbackInventoryChanged, this);
		}
	}
	
	private function unhook()
	{
		for(var i=0; i<this.m_inventories.length; i++)
		{
			this.m_inventories[i].SignalItemLoaded.Disconnect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemAdded.Disconnect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemMoved.Disconnect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemRemoved.Disconnect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemChanged.Disconnect(callbackInventoryChanged, this);
			this.m_inventories[i].SignalItemStatChanged.Disconnect(callbackInventoryChanged, this);
		}
	}
	
	public function callbackInventoryChanged()
	{
		rescanInventories();
	}
	
	private function rescanInventories()
	{
		this.m_stats_calculated = false;
		
		this.m_lairFragments = {};
		this.m_regionalFragments = {};
		for(var invIdx=0; invIdx<this.m_inventories.length; invIdx++)
		{
			var inventory = this.m_inventories[invIdx];
			for(var i = 0; i<inventory.GetMaxItems(); i++)
			{
				var item = inventory.GetItemAt(i);
				if(item)
				{
					if(isLairFragment(item))
					{
						var fragment = LairData.findLairFragmentByLocalizedName(isLairFragment(item));
						if(fragment)
						{
							if(!this.m_lairFragments.hasOwnProperty(fragment.region.getCode()))
							{
								this.m_lairFragments[fragment.region.getCode()] = {};
							}
							if(!this.m_lairFragments[fragment.region.getCode()].hasOwnProperty(fragment.zone.getCode()))
							{
								this.m_lairFragments[fragment.region.getCode()][fragment.zone.getCode()] = {};
							}
							if(!this.m_lairFragments[fragment.region.getCode()][fragment.zone.getCode()].hasOwnProperty(fragment.lair.getCode()))
							{
								this.m_lairFragments[fragment.region.getCode()][fragment.zone.getCode()][fragment.lair.getCode()] = {};
							}
							if(!this.m_lairFragments[fragment.region.getCode()][fragment.zone.getCode()][fragment.lair.getCode()].hasOwnProperty(fragment.boss.getCode()))
							{
								this.m_lairFragments[fragment.region.getCode()][fragment.zone.getCode()][fragment.lair.getCode()][fragment.boss.getCode()] = {};
								for(var oIdx=0; oIdx<LairBossFragmentSetOrientation.m_orientations.length; oIdx++)
								{
									var orientation = LairBossFragmentSetOrientation.m_orientations[oIdx];
									this.m_lairFragments[fragment.region.getCode()][fragment.zone.getCode()][fragment.lair.getCode()][fragment.boss.getCode()][orientation] = 0;
								}
							}
							this.m_lairFragments[fragment.region.getCode()][fragment.zone.getCode()][fragment.lair.getCode()][fragment.boss.getCode()][fragment.orientation] += item.m_StackSize;
						}
					}
					if(isRegionalFragment(item))
					{
						var fragment = LairData.findRegionalFragmentByLocalizedName(isRegionalFragment(item));
						if(fragment)
						{
							if(!this.m_regionalFragments.hasOwnProperty(fragment.region.getCode()))
							{
								this.m_regionalFragments[fragment.region.getCode()] = {};
							}
							if(!this.m_regionalFragments[fragment.region.getCode()].hasOwnProperty(fragment.boss.getCode()))
							{
								this.m_regionalFragments[fragment.region.getCode()][fragment.boss.getCode()] = {};
								for(var oIdx=0; oIdx<RegionalBossFragmentSetOrientation.m_orientations.length; oIdx++)
								{
									var orientation = RegionalBossFragmentSetOrientation.m_orientations[oIdx];
									this.m_regionalFragments[fragment.region.getCode()][fragment.boss.getCode()][orientation] = 0;
								}
							}
							this.m_regionalFragments[fragment.region.getCode()][fragment.boss.getCode()][fragment.orientation] += item.m_StackSize;
						}
					}
				}
			}
		}
		
		this.SignalChanged.Emit();
	}
	
	public function getStats() : Object
	{
		if(!this.m_stats_calculated)
		{
			this.m_stats = {
				totalLairFragmentCount: 0,
				distinctLairFragmentCount: 0,
				distinctRegionCount: 0,
				distinctZoneCount: 0,
				distinctLairCount: 0,
				distinctBossCount: 0,
				totalRegionalFragmentCount: 0,
				distinctRegionalFragmentCount: 0,
				distinctRegionalRegionsCount: 0,
				distinctRegionalBossesCount: 0
			};
		
			for(var region:String in this.m_lairFragments)
			{
				this.m_stats.distinctRegionCount++;
				var regionObj = this.m_lairFragments[region];
				for(var zone:String in regionObj)
				{
					this.m_stats.distinctZoneCount++;
					var zoneObj = this.m_lairFragments[region][zone];
					for(var lair:String in zoneObj)
					{
						this.m_stats.distinctLairCount++;
						var bossesObj = this.m_lairFragments[region][zone][lair];
						for(var boss:String in bossesObj)
						{
							this.m_stats.distinctBossCount++;
							var fragmentsObj = this.m_lairFragments[region][zone][lair][boss];
						
							for(var oIdx=0; oIdx<LairBossFragmentSetOrientation.m_orientations.length; oIdx++)
							{
								var orientation = LairBossFragmentSetOrientation.m_orientations[oIdx];
								var fragmentCount = this.m_lairFragments[region][zone][lair][boss][orientation];
							
								if(fragmentCount > 0) this.m_stats.distinctLairFragmentCount++;
								this.m_stats.totalLairFragmentCount += fragmentCount;
							}
						}
					}
				}
			}
			
			for(var region:String in this.m_regionalFragments)
			{
				this.m_stats.distinctRegionalRegionsCount++;
				
				for(var boss:String in this.m_regionalFragments[region])
				{
					this.m_stats.distinctRegionalBossesCount++;
						
					var fragmentsObj = this.m_regionalFragments[region][boss];
				
					for(var oIdx=0; oIdx<RegionalBossFragmentSetOrientation.m_orientations.length; oIdx++)
					{
						var orientation = RegionalBossFragmentSetOrientation.m_orientations[oIdx];
						var fragmentCount = this.m_regionalFragments[region][boss][orientation];
					
						if(fragmentCount > 0) this.m_stats.distinctRegionalFragmentCount++;
						this.m_stats.totalRegionalFragmentCount += fragmentCount;
					}
				}
			}
			
			this.m_stats_calculated = true;
		}
		
		return this.m_stats;
	}
	
	public function exportString() : String
	{
		var export = [];
		
		// Header
		export.push("#TSWLMExport#");
		
		// Metadata
		export.push("META{fmtv}2;");
		export.push("META{gen}omod;");
		export.push("META{omodv}"+DistributedValue.GetDValue("tswlmexport_version", "")+";");
		
		// Sorted Data
		
		// Loop all Regions
		var regions = LairData.getRegions();
		for(var rIdx=0; rIdx<regions.length; rIdx++)
		{
			// Loop all Zones in Region
			var region = regions[rIdx];
			var zones = region.getZones();
			for(var zIdx=0; zIdx<zones.length; zIdx++)
			{
				// Loop all Lairs in Zone (usually just 1)
				var zone = zones[zIdx];
				var lairs = zone.getLairs();
				for(var lIdx=0; lIdx<lairs.length; lIdx++)
				{
					// Loop all Bosses in Lair
					var lair = lairs[lIdx];
					var bosses = lair.getBosses();
					for(var bIdx=0; bIdx<bosses.length; bIdx++)
					{
						var boss = bosses[bIdx];
						
						if(m_lairFragments.hasOwnProperty(region.getCode()))
						{
							if(m_lairFragments[region.getCode()].hasOwnProperty(zone.getCode()))
							{
								if(m_lairFragments[region.getCode()][zone.getCode()].hasOwnProperty(lair.getCode()))
								{
									if(m_lairFragments[region.getCode()][zone.getCode()][lair.getCode()].hasOwnProperty(boss.getCode()))
									{
										var counts = "";
										for(var oIdx=0; oIdx<LairBossFragmentSetOrientation.m_orientations.length; oIdx++)
										{
											var orientation = LairBossFragmentSetOrientation.m_orientations[oIdx];
											var fragmentCount = m_lairFragments[region.getCode()][zone.getCode()][lair.getCode()][boss.getCode()][orientation];
											if(fragmentCount > 0)
											{
												counts += "" + fragmentCount;
											}
											if(oIdx < LairBossFragmentSetOrientation.m_orientations.length-1)
											{
												counts += ",";
											}
										}

										export.push("SFCN{" + region.getCode() + "/" + zone.getCode() + "/" + lair.getCode() + ":" + boss.getCode() + "}" + counts + ";");
									}
								}
							}
						}
					}
				}
			}
			
			var boss = region.getRegionalBoss();
			if(m_regionalFragments.hasOwnProperty(region.getCode()))
			{
				if(m_regionalFragments[region.getCode()].hasOwnProperty(boss.getCode()))
				{
					
					var counts = "";
					for(var oIdx=0; oIdx<RegionalBossFragmentSetOrientation.m_orientations.length; oIdx++)
					{
						var orientation = RegionalBossFragmentSetOrientation.m_orientations[oIdx];
						var fragmentCount = m_regionalFragments[region.getCode()][boss.getCode()][orientation];
						if(fragmentCount > 0)
						{
							counts += "" + fragmentCount;
						}
						if(oIdx < RegionalBossFragmentSetOrientation.m_orientations.length-1)
						{
							counts += ",";
						}
					}

					export.push("SRFC{" + region.getCode() + ":" + boss.getCode() + "}" + counts + ";");
				}
			}
		}
		
		// Footer
		export.push("#ENDC#");
		
		var exportString = export.join("");
		
		return exportString;
	}
	
	public function isFragment(item:InventoryItem)
	{
		if(isLairFragment(item) || isRegionalFragment(item))
		{
			return true;
		}
		return false;
	}
	
	public function isLairFragment(item:InventoryItem)
	{
		var stringPattern;
		switch(this.m_locale)
		{
			case "en":
				stringPattern = "Summoning Ritual Fragment: ";
			break;
			case "de":
				stringPattern = "Beschwörungsritualfragment: ";
			break;
			case "fr":
				stringPattern = "Fragment de rituel d'évocation : ";
			break;
			default:
			break;
		}
		if(item.m_Name.indexOf(stringPattern) == 0) return item.m_Name.substr(stringPattern.length);
		return false;
	}
	
	public function isRegionalFragment(item:InventoryItem)
	{
		var stringPattern;
		switch(this.m_locale)
		{
			case "en":
				stringPattern = "Cleansing Ritual Fragment: ";
			break;
			case "de":
				stringPattern = "Säuberungsritualfragment: ";
			break;
			case "fr":
				stringPattern = "Fragment de rituel purificateur : ";
			break;
			default:
			break;
		}
		if(item.m_Name.indexOf(stringPattern) == 0) return item.m_Name.substr(stringPattern.length);
		return false;
	}
}