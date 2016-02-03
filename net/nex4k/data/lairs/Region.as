import com.Utils.LDBFormat;

import net.nex4k.data.lairs.RegionalBoss;

class net.nex4k.data.lairs.Region
{
	public static var SOLOMON_ISLAND:String = "sol";
	public static var EGYPT:String = "egy";
	public static var TRANSYLVANIA:String = "tra";
	// public static var TOKYO:String = "tyo"; // unused so far
	
	private var m_locale:String;
	private var m_code:String;
	private var m_zones:Array;
	private var m_regionalBoss:RegionalBoss;
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	public function Region(code:String, zones:Array, regionalBoss:RegionalBoss)
	{
		this.m_locale = com.Utils.LDBFormat.GetCurrentLanguageCode();
		this.m_code = code;
		this.m_zones = zones;
		this.m_regionalBoss = regionalBoss;
	}
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {};
		m_localization["en"][SOLOMON_ISLAND] = "Solomon Island";
		m_localization["en"][EGYPT] = "Egypt";
		m_localization["en"][TRANSYLVANIA] = "Transylvania";
		// m_localization["en"][TOKYO] = "Tokyo"; // unused so far
		
		m_localization["de"] = {};
		m_localization["de"][SOLOMON_ISLAND] = "Solomon Island";
		m_localization["de"][EGYPT] = "Ägypten";
		m_localization["de"][TRANSYLVANIA] = "Transsylvanien";
		// m_localization["de"][TOKYO] = "Tokio"; // unused so far
		
		m_localization["fr"] = {};
		m_localization["fr"][SOLOMON_ISLAND] = "Solomon Island";
		m_localization["fr"][EGYPT] = "Égypte";
		m_localization["fr"][TRANSYLVANIA] = "Transylvanie";
		// m_localization["fr"][TOKYO] = "Tokyo"; // unused so far
		
		m_localization_initialized = true;
	}
	
	public function getCode() : String
	{
		return this.m_code;
	}
	
	public function getName() : String
	{
		return getLocalizedName(this.m_locale);
	}
	
	public function getLocalizedName(locale:String) : String
	{
		if(!m_localization_initialized) initLocalization();
		return m_localization[locale][this.m_code];
	}
	
	public function getZones() : Array
	{
		return this.m_zones;
	}
	
	public function getRegionalBoss() : RegionalBoss
	{
		return this.m_regionalBoss;
	}
}