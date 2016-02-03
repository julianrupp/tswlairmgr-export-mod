import gfx.core.UIComponent;
import gfx.controls.TextArea;
import gfx.controls.Button;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
import com.GameInterface.Inventory;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.Utils;
import com.Components.WindowComponentContent;
import mx.utils.Delegate;
import flash.display.*;
import flash.text.*;

import net.nex4k.TSWLMExport.util.InventoryScanner;

class TSWLMExportWindow extends WindowComponentContent
{
	private var m_StatsLabel:TextField;
	private var m_ExportStringField:TextArea;
	
	private var m_Width:Number;
	private var m_Height:Number;
	
	private var m_characterInventory:Inventory;
	private var m_isBankOpenDV:DistributedValue;
	private var m_isBankOpen:Boolean = false;
	private var m_bankInventory:Inventory;
	private var m_inventoryScanner:InventoryScanner;

	public var SignalClose:Signal;

	public function TSWLMExportWindow()
	{
		this.SignalClose = new Signal();
		
		m_characterInventory = new com.GameInterface.Inventory(
			new com.Utils.ID32(
				_global.Enums.InvType.e_Type_GC_BackpackContainer,
				com.GameInterface.Game.CharacterBase.GetClientCharID().GetInstance()
			)
		);
		
		this.m_isBankOpenDV = new DistributedValue("tradepost_window");
		this.m_isBankOpenDV.SignalChanged.Connect(callbackBankAccessStateChanged, this);
		
		this.m_inventoryScanner = new InventoryScanner();
		this.m_inventoryScanner.SignalChanged.Connect(callbackDataChanged, this);
		
		callbackBankAccessStateChanged();
	}
	
	public function callbackBankAccessStateChanged()
	{
		var inventories:Array = Array();
		inventories.push(m_characterInventory);
		
		this.m_isBankOpen = DistributedValue.GetDValue("tradepost_window");
		if(m_isBankOpen)
		{
			this.m_bankInventory = new com.GameInterface.Inventory(
				new com.Utils.ID32(
					_global.Enums.InvType.e_Type_GC_BankContainer,
					com.GameInterface.Game.CharacterBase.GetClientCharID().GetInstance()
				)
			);
			
			inventories.push(this.m_bankInventory);
		}
		else
		{
			this.m_bankInventory = undefined;
		}
		
		this.m_inventoryScanner.setInventories(inventories);
	}
	
	public function callbackDataChanged()
	{
		rescanInventories();
	}
	
	private function rescanInventories()
	{
		var stats = this.m_inventoryScanner.getStats();
		
		var text = "";
		text += "Exporting fragment counts " + ((m_isBankOpen) ? "from your inventory and personal bank" : "from your inventory only") + ".\n";
		text += "Found " + stats.totalLairFragmentCount + " fragment" + ((stats.totalLairFragmentCount==1) ? "" : "s") + " (" + stats.distinctLairFragmentCount + " distinct) from " + stats.distinctRegionCount + " region" + ((stats.distinctRegionCount==1) ? "" : "s") + ", " + stats.distinctZoneCount + " zone" + ((stats.distinctZoneCount==1) ? "" : "s") + ", " + stats.distinctBossCount + " boss" + ((stats.distinctBossCount==1) ? "" : "es") + ".\n";
		
		this.m_StatsLabel.text = text;
		
		this.m_ExportStringField.text = this.m_inventoryScanner.exportString();
	}
	
	public function SetSize(width:Number, height:Number)
	{
		m_Width = width;
		m_Height = height;
	}
	
	public function configUI()
	{
		callbackBankAccessStateChanged();
		
		layout();
	}

	private function layout()
	{		 
		SignalSizeChanged.Emit();
	}
}
