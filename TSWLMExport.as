import flash.geom.Point;
import flash.geom.Rectangle;
import TSWLMExportWindow;
import com.GameInterface.DistributedValue;
import com.Utils.Archive;
import com.Utils.LDBFormat;

var version = "1.1.1";

var m_VisibleValue:DistributedValue;
var m_TSWLMExportWindow:TSWLMExportWindow;
var m_IsTSWLMExportOpen = com.GameInterface.DistributedValue.Create("tswlmexport_window");
var m_TSWLMExportVersion = com.GameInterface.DistributedValue.Create("tswlmexport_version");
var m_IconPosition;
var m_Icon;
var m_VTIOIsLoadedMonitor;
var VTIOAddonInfo = "TSW Lair Manager Export|Cobin|" + version + "|tswlmexport_window|_root.tswlmexport\\tswlmexport.m_Icon";

function onLoad()
{
	DistributedValue.SetDValue("tswlmexport_version", version);
	
	m_TSWLMExportWindow = attachMovie("TSWLMExportWindowComponent", "m_TSWLMExportWindow", getNextHighestDepth());
	m_TSWLMExportWindow.SetContent( "TSWLMExportWindow" );
	m_TSWLMExportWindow.SignalClose.Connect( SlotCloseTSWLMExport, this );
	m_TSWLMExportWindow.SetTitle( "TSW Lair Manager Export v"+version );
	m_TSWLMExportWindow.ShowFooter( false );
	m_TSWLMExportWindow.ShowResizeButton( false );
	m_TSWLMExportWindow.ShowStroke( false );
	m_TSWLMExportWindow.SetSize( 520, 234 );
	
	m_TSWLMExportWindow._x = 5;
	m_TSWLMExportWindow._y = 25;
	
	DistributedValue.SetDValue("tswlmexport_window", false);
	m_TSWLMExportWindow._visible = false;
	
	m_IsTSWLMExportOpen.SignalChanged.Connect(callbackOpenStateChanged, this);
}

function callbackOpenStateChanged()
{
	if(com.GameInterface.DistributedValueBase.GetDValue("tswlmexport_window") == true)
	{
		m_TSWLMExportWindow._visible = true;
	}
	else
	{
		m_TSWLMExportWindow._visible = false;
	}
}

function OnModuleDeactivated():Archive
{
	var archive:Archive = new Archive();
	archive.AddEntry("WindowX", m_TSWLMExportWindow._x);
	archive.AddEntry("WindowY", m_TSWLMExportWindow._y);
	archive.AddEntry("IconPosition", m_IconPosition);
	return archive;		  
}

function OnModuleActivated(config:Archive)
{
	m_IconPosition = config.FindEntry("IconPosition");
	if(m_IconPosition == undefined)
	{
		m_IconPosition = new flash.geom.Point();
		m_IconPosition.x = 80;
		m_IconPosition.y = 80;
	}
	InitIcon();
	if(config != undefined)
	{
		m_TSWLMExportWindow._x = config.FindEntry("WindowX", 5);
		m_TSWLMExportWindow._y = config.FindEntry("WindowY", 25);
	}
}

function InitIcon()
{
	m_VTIOIsLoadedMonitor = com.GameInterface.DistributedValue.Create("VTIO_IsLoaded");
	m_VTIOIsLoadedMonitor.SignalChanged.Connect(SlotCheckVTIOIsLoaded, this);
	m_Icon = attachMovie("Icon", "m_Icon", getNextHighestDepth());
	m_Icon._width = 18;
	m_Icon._height = 18;
	m_Icon._visible = false;
	m_Icon._x = m_IconPosition.x;
	m_Icon._y = m_IconPosition.y;
	m_Icon.onMousePress = function(buttonID)
	{
		if(buttonID == 1)
		{
			if(m_Tooltip != undefined)
			{
				m_Tooltip.Close();
			}
			com.GameInterface.DistributedValueBase.SetDValue("tswlmexport_window", !com.GameInterface.DistributedValueBase.GetDValue("tswlmexport_window"));
		}
		else if(buttonID == 2)
		{
			if(m_Tooltip != undefined)
			{
				m_Tooltip.Close();
			}
			if(IsViperToolbarLoaded() != true)
			{
				this.startDrag();
			}
		}
	};
	m_Icon.onRollOver = function()
	{
		if(m_Tooltip != undefined)
		{
			m_Tooltip.Close();
		}
		var tt = new com.GameInterface.Tooltip.TooltipData();
		tt.AddAttribute("","<font face=\'_StandardFont\' size=\'13\' color=\'#FF8000\'><b>TSW Lair Manager Export</b></font>");
		tt.AddAttributeSplitter();
		tt.AddAttribute("","");
		tt.AddAttribute("","<font face=\'_StandardFont\' size=\'12\' color=\'#FFFFFF\'>Click to open/close.</font>");
		tt.m_Padding = 4;
		tt.m_MaxWidth = 210;
		m_Tooltip = com.GameInterface.Tooltip.TooltipManager.GetInstance().ShowTooltip(undefined,com.GameInterface.Tooltip.TooltipInterface.e_OrientationVertical,0,tt);
	};
	m_Icon.onRollOut = function()
	{
		if(m_Tooltip != undefined)
		{
			m_Tooltip.Close();
		}
	};
	m_Icon.onMouseRelease = function(eventObj)
	{
		if(m_Tooltip != undefined)
		{
			m_Tooltip.Close();
		}
		if(IsViperToolbarLoaded() != true)
		{
			m_IconPosition.x = m_Icon._x;
			m_IconPosition.y = m_Icon._y;
		}
		stopDrag();
	};
	SlotCheckVTIOIsLoaded();
}

function SlotCheckVTIOIsLoaded()
{
	if(com.GameInterface.DistributedValueBase.GetDValue("VTIO_IsLoaded") != undefined)
	{
		com.GameInterface.DistributedValueBase.SetDValue("VTIO_RegisterAddon", VTIOAddonInfo);
		HideIconWithViperTopbar();
	}
	else
	{
		ShowIconWithoutViperTopbar();
	}
}

function ShowIconWithoutViperTopbar()
{
	m_Icon._visible = true;
	m_Icon._width = 32;
	m_Icon._height = 32;
}

function HideIconWithViperTopbar()
{
	m_Icon._visible = false;
	m_Icon._width = 18;
	m_Icon._height = 18;
}

function IsViperToolbarLoaded()
{
	if(com.GameInterface.DistributedValueBase.GetDValue("VTIO_IsLoaded") == true)
	{
		return true;
	}
	return false;
}

function SlotCloseTSWLMExport()
{
	DistributedValue.SetDValue("tswlmexport_window", false);
}
