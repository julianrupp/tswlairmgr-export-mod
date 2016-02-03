import com.Utils.LDBFormat;

import net.nex4k.data.lairs.RegionalBossFragmentSet;

class net.nex4k.data.lairs.RegionalBoss
{
	public static var ASPECT_OF_THE_LONG_TOOTHED:String = "sol";
	public static var ASPECT_OF_THE_MANY_LIMBED:String = "egy";
	public static var ASPECT_OF_THE_GREAT_WINGED:String = "tra";
	// public static var TOKYO:String = "tyo"; // unused so far
	
	private var m_locale:String;
	private var m_code:String;
	private var m_fragmentSet:RegionalBossFragmentSet;
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	public function RegionalBoss(code:String, fragmentSet:RegionalBossFragmentSet)
	{
		this.m_locale = com.Utils.LDBFormat.GetCurrentLanguageCode();
		this.m_code = code;
		this.m_fragmentSet = fragmentSet;
	}
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {};
		m_localization["en"][ASPECT_OF_THE_LONG_TOOTHED] = "Aspect of the Long-Toothed";
		m_localization["en"][ASPECT_OF_THE_MANY_LIMBED] = "Aspect of the Many-Limbed";
		m_localization["en"][ASPECT_OF_THE_GREAT_WINGED] = "Aspect of the Great-Winged";
		// m_localization["en"][TOKYO] = "Unnamed"; // unused so far
		
		m_localization["de"] = {};
		m_localization["de"][ASPECT_OF_THE_LONG_TOOTHED] = "Aspekt des Langzahnigen";
		m_localization["de"][ASPECT_OF_THE_MANY_LIMBED] = "Aspekt des Vielarmigen";
		m_localization["de"][ASPECT_OF_THE_GREAT_WINGED] = "Aspekt des Großgeflügelten";
		// m_localization["de"][TOKYO] = "Unnamed"; // unused so far
		
		m_localization["fr"] = {};
		m_localization["fr"][ASPECT_OF_THE_LONG_TOOTHED] = "Aspect aux Longues Dents";
		m_localization["fr"][ASPECT_OF_THE_MANY_LIMBED] = "Aspect aux Nombreux Membres";
		m_localization["fr"][ASPECT_OF_THE_GREAT_WINGED] = "Aspect aux Grandes Ailes";
		// m_localization["fr"][TOKYO] = "Unnamed"; // unused so far
		
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
	
	public function getFragmentSet() : RegionalBossFragmentSet
	{
		return this.m_fragmentSet;
	}
}