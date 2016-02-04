import gfx.core.UIComponent;
import gfx.controls.TextArea;
import gfx.controls.Button;
import com.Utils.Signal;
import com.GameInterface.DistributedValue;
import com.GameInterface.Inventory;
import com.GameInterface.Game.CharacterBase;
import com.GameInterface.Utils;
import com.Components.WindowComponentContent;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import flash.display.*;
import flash.text.*;

import net.nex4k.TSWLMExport.util.InventoryScanner;

class TSWLMExportWindow extends WindowComponentContent
{
	private var m_StatsLabel:TextField;
	private var m_ExportStringField:TextArea;
	private var m_HelpLabel:TextField;
	
	private var m_Width:Number;
	private var m_Height:Number;
	
	private var m_characterInventory:Inventory;
	private var m_isBankOpenDV:DistributedValue;
	private var m_isBankOpen:Boolean = false;
	private var m_bankInventory:Inventory;
	private var m_inventoryScanner:InventoryScanner;
	private var m_currentExportString:String;

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
		
		var statsLabelText = "";
		var helpLabelText = "";
		switch(com.Utils.LDBFormat.GetCurrentLanguageCode())
		{
			default:
			case "en":
				/*
				Exporting fragment counts from your inventory and personal bank.
				Found #### fragments (#### distinct) from #### regions, #### zones, #### bosses.
				*/
				statsLabelText += "Exporting fragment counts " + ((m_isBankOpen) ? "from your inventory and personal bank" : "from your inventory only") + ".\n";
				statsLabelText += "Found " + stats.totalLairFragmentCount + " fragment" + ((stats.totalLairFragmentCount==1) ? "" : "s") + ((stats.distinctLairFragmentCount > 1) ? " (" + stats.distinctLairFragmentCount + " distinct)" : "" ) + " from " + stats.distinctRegionCount + " region" + ((stats.distinctRegionCount==1) ? "" : "s") + ", " + stats.distinctZoneCount + " zone" + ((stats.distinctZoneCount==1) ? "" : "s") + ", " + stats.distinctBossCount + " boss" + ((stats.distinctBossCount==1) ? "" : "es") + ".\n";
				/*
				Copy the code in the text field above (click, Ctrl-A, Ctrl-C) and paste it into the TSW Lair Manager web app.
				*/
				helpLabelText += "Copy the code in the text field above (click, Ctrl-A, Ctrl-C) and paste it into the TSW Lair Manager web app.";
			break;
			case "de":
				/*
				Exportiere Fragmente aus deinem Inventar und deiner persönlichen Bank.
				#### Fragmente (#### verschiedene) aus #### Regionen, #### Zonen, #### Bossen gefunden.
				*/
				statsLabelText += "Exportiere Fragmente " + ((m_isBankOpen) ? "aus deinem Inventar und deiner persönlichen Bank" : "nur aus deinem Inventar") + ".\n";
				statsLabelText += "" + stats.totalLairFragmentCount + " Fragment" + ((stats.totalLairFragmentCount==1) ? "" : "e") + ((stats.distinctLairFragmentCount > 1) ? " (" + stats.distinctLairFragmentCount + " verschiedene)" : "") + " aus " + stats.distinctRegionCount + " Region" + ((stats.distinctRegionCount==1) ? "" : "en") + ", " + stats.distinctZoneCount + " Zone" + ((stats.distinctZoneCount==1) ? "" : "n") + ", " + stats.distinctBossCount + " Boss" + ((stats.distinctBossCount==1) ? "" : "en") + " gefunden.\n";
				/*
				Kopiere den Code aus dem Textfeld oben (Klick, Strg-A, Strg-C) und füge ihn im TSW Lair Manager Web-App ein.
				*/
				helpLabelText += "Kopiere den Code aus dem Textfeld oben (Klick, Strg-A, Strg-C) und füge ihn im TSW Lair Manager Web-App ein.";
			break;
			case "fr":
				/*
				Exporte les fragments de votre inventaire et banque personnelle.
				Trouvé #### fragments (#### distincts) de #### régions, #### zones, #### boss.
				*/
				statsLabelText += "Exporte les fragments " + ((m_isBankOpen) ? "de votre inventaire et banque personnelle" : "juste de votre inventaire") + ".\n";
				statsLabelText += "Trouvé " + stats.totalLairFragmentCount + " fragment" + ((stats.totalLairFragmentCount==1) ? "" : "s") + ((stats.distinctLairFragmentCount > 1) ? " (" + stats.distinctLairFragmentCount + " distincts)" : "") + " de " + stats.distinctRegionCount + " région" + ((stats.distinctRegionCount==1) ? "" : "s") + ", " + stats.distinctZoneCount + " zone" + ((stats.distinctZoneCount==1) ? "" : "s") + ", " + stats.distinctBossCount + " boss" + ((stats.distinctBossCount==1) ? "" : "") + ".\n";
				/*
				Copiez le code du champ de texte ci-dessus (cliquez, Ctrl-A, Ctrl-C) puis collez-le dans l'appli web TSW Lair Manager.
				*/
				helpLabelText += "Copiez le code du champ de texte ci-dessus (cliquez, Ctrl-A, Ctrl-C) puis collez-le dans l'appli web TSW Lair Manager.";
			break;
		}
		
		this.m_StatsLabel.text = statsLabelText;
		this.m_HelpLabel.text = helpLabelText;
		
		this.m_currentExportString = this.m_inventoryScanner.exportString();
		this.m_ExportStringField.text = this.m_currentExportString;
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
