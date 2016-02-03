import com.Utils.LDBFormat;

class net.nex4k.data.lairs.Zone
{
	public static var KINGSMOUTH:String = "km";
	public static var SAVAGE_COAST:String = "sc";
	public static var BLUE_MOUNTAIN:String = "bm";
	public static var SCORCHED_DESERT:String = "sd";
	public static var CITY_OF_THE_SUN_GOD:String = "cs";
	public static var BESIEGED_FARMLANDS:String = "bf";
	public static var SHADOWY_FOREST:String = "sf";
	public static var CARPATHIAN_FANGS:String = "cf";
	// public static var KAIDAN:String = "kd"; // unused so far
	
	private var m_locale:String;
	private var m_code:String;
	private var m_lairs:Array;
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	public function Zone(code:String, lairs:Array)
	{
		this.m_locale = com.Utils.LDBFormat.GetCurrentLanguageCode();
		this.m_code = code;
		this.m_lairs = lairs;
	}
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {};
		m_localization["en"][KINGSMOUTH] = "Kingsmouth";
		m_localization["en"][SAVAGE_COAST] = "Savage Coast";
		m_localization["en"][BLUE_MOUNTAIN] = "Blue Mountain";
		m_localization["en"][SCORCHED_DESERT] = "Scorched Desert";
		m_localization["en"][CITY_OF_THE_SUN_GOD] = "City of the Sun God";
		m_localization["en"][BESIEGED_FARMLANDS] = "Besieged Farmlands";
		m_localization["en"][SHADOWY_FOREST] = "Shadowy Forest";
		m_localization["en"][CARPATHIAN_FANGS] = "Carpathian Fangs";
		// m_localization["en"][KAIDAN] = "Kaidan"; // unused so far
		
		m_localization["de"] = {};
		m_localization["de"][KINGSMOUTH] = "Kingsmouth";
		m_localization["de"][SAVAGE_COAST] = "Savage Coast";
		m_localization["de"][BLUE_MOUNTAIN] = "Blue Mountain";
		m_localization["de"][SCORCHED_DESERT] = "Die verbrannte Wüste";
		m_localization["de"][CITY_OF_THE_SUN_GOD] = "Stadt des Sonnengottes";
		m_localization["de"][BESIEGED_FARMLANDS] = "Das belagerte Farmland";
		m_localization["de"][SHADOWY_FOREST] = "Der schattenhafte Wald";
		m_localization["de"][CARPATHIAN_FANGS] = "Reißzähne der Karpaten";
		// m_localization["de"][KAIDAN] = "Kaidan"; // unused so far
		
		m_localization["fr"] = {};
		m_localization["fr"][KINGSMOUTH] = "Kingsmouth";
		m_localization["fr"][SAVAGE_COAST] = "La Côte Sauvage";
		m_localization["fr"][BLUE_MOUNTAIN] = "La Montagne Bleue";
		m_localization["fr"][SCORCHED_DESERT] = "Le Désert Brûlé";
		m_localization["fr"][CITY_OF_THE_SUN_GOD] = "Cité du Dieu Solaire";
		m_localization["fr"][BESIEGED_FARMLANDS] = "Les Fermes Assiégées";
		m_localization["fr"][SHADOWY_FOREST] = "La Forêt des Ombres";
		m_localization["fr"][CARPATHIAN_FANGS] = "Les Crocs des Carpates";
		// m_localization["fr"][KAIDAN] = "Kaidan"; // unused so far
		
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
	
	public function getLairs() : Array
	{
		return this.m_lairs;
	}
}