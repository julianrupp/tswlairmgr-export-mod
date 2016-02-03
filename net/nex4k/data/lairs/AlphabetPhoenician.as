import com.Utils.LDBFormat;

class net.nex4k.data.lairs.AlphabetPhoenician extends net.nex4k.data.lairs.Alphabet
{
	public static var ALAPH:String = "alaph";
	public static var BETH:String = "beth";
	public static var GAMAL:String = "gamal";
	public static var DALATH:String = "dalath";
	public static var HE:String = "he";
	public static var WAW:String = "waw";
	public static var ZAIN:String = "zain";
	public static var HETH:String = "heth";
	public static var TETH:String = "teth";
	public static var YUDH:String = "yudh";
	public static var KAPH:String = "kaph";
	public static var LAMADH:String = "lamadh";
	public static var MIM:String = "mim";
	public static var NUN:String = "nun";
	public static var SEMKATH:String = "semkath";
	//public static var AYIN:String = "ayin"; // unused so far
	public static var PE:String = "pe";
	public static var SADHE:String = "sadhe";
	public static var QOPH:String = "qoph";
	public static var RESH:String = "resh";
	public static var SHIN:String = "shin";
	//public static var TAW:String = "taw"; // unused so far
	public static var E:String = "e";
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {};
		m_localization["en"][ALAPH] = "Alaph";
		m_localization["en"][BETH] = "Beth";
		m_localization["en"][GAMAL] = "Gamal";
		m_localization["en"][DALATH] = "Dalath";
		m_localization["en"][HE] = "He";
		m_localization["en"][WAW] = "Waw";
		m_localization["en"][ZAIN] = "Zain";
		m_localization["en"][HETH] = "Heth";
		m_localization["en"][TETH] = "Teth";
		m_localization["en"][YUDH] = "Yudh";
		m_localization["en"][KAPH] = "Kaph";
		m_localization["en"][LAMADH] = "Lamadh";
		m_localization["en"][MIM] = "Mim";
		m_localization["en"][NUN] = "Nun";
		m_localization["en"][SEMKATH] = "Semkath";
		// m_localization["en"][AYIN] = "Ayin"; // unused so far
		m_localization["en"][PE] = "Pe";
		m_localization["en"][SADHE] = "Sadhe";
		m_localization["en"][QOPH] = "Qoph";
		m_localization["en"][RESH] = "Resh";
		m_localization["en"][SHIN] = "Shin";
		//m_localization["en"][TAW] = "Taw"; // unused so far
		m_localization["en"][E] = "E";
		
		m_localization["de"] = {};
		m_localization["de"][ALAPH] = "Alaph";
		m_localization["de"][BETH] = "Beth";
		m_localization["de"][GAMAL] = "Gamal";
		m_localization["de"][DALATH] = "Dalath";
		m_localization["de"][HE] = "He";
		m_localization["de"][WAW] = "Waw";
		m_localization["de"][ZAIN] = "Zain";
		m_localization["de"][HETH] = "Heth";
		m_localization["de"][TETH] = "Teth";
		m_localization["de"][YUDH] = "Yudh";
		m_localization["de"][KAPH] = "Kaph";
		m_localization["de"][LAMADH] = "Lamadh";
		m_localization["de"][MIM] = "Mim";
		m_localization["de"][NUN] = "Nun";
		m_localization["de"][SEMKATH] = "Semkath";
		// m_localization["de"][AYIN] = "Ayin"; // unused so far
		m_localization["de"][PE] = "Pe";
		m_localization["de"][SADHE] = "Sadhe";
		m_localization["de"][QOPH] = "Qoph";
		m_localization["de"][RESH] = "Resh";
		m_localization["de"][SHIN] = "Shin";
		//m_localization["de"][TAW] = "Taw"; // unused so far
		m_localization["de"][E] = "E";
		
		m_localization["fr"] = {};
		m_localization["fr"][ALAPH] = "Alaph";
		m_localization["fr"][BETH] = "Beth";
		m_localization["fr"][GAMAL] = "Gamal";
		m_localization["fr"][DALATH] = "Dalath";
		m_localization["fr"][HE] = "He";
		m_localization["fr"][WAW] = "Waw";
		m_localization["fr"][ZAIN] = "Zain";
		m_localization["fr"][HETH] = "Heth";
		m_localization["fr"][TETH] = "Teth";
		m_localization["fr"][YUDH] = "Yudh";
		m_localization["fr"][KAPH] = "Kaph";
		m_localization["fr"][LAMADH] = "Lamadh";
		m_localization["fr"][MIM] = "Mim";
		m_localization["fr"][NUN] = "Nun";
		m_localization["fr"][SEMKATH] = "Semkath";
		// m_localization["fr"][AYIN] = "Ayin"; // unused so far
		m_localization["fr"][PE] = "Pe";
		m_localization["fr"][SADHE] = "Sadhe";
		m_localization["fr"][QOPH] = "Qoph";
		m_localization["fr"][RESH] = "Resh";
		m_localization["fr"][SHIN] = "Shin";
		//m_localization["fr"][TAW] = "Taw"; // unused so far
		m_localization["fr"][E] = "E";
		
		m_localization_initialized = true;
	}
	
	public static function getName(enumConstant:String) : String
	{
		return getLocalizedName(enumConstant, com.Utils.LDBFormat.GetCurrentLanguageCode());
	}
	
	public static function getLocalizedName(enumConstant:String, locale:String) : String
	{
		if(!m_localization_initialized) initLocalization();
		return m_localization[locale][enumConstant] || "missing loc";
	}
	
	public static function getCodeFromName(localizedName:String) : String
	{
		return getCodeFromLocalizedName(localizedName, com.Utils.LDBFormat.GetCurrentLanguageCode());
	}
	
	public static function getCodeFromLocalizedName(localizedName:String, locale:String) : String
	{
		if(!m_localization_initialized) initLocalization();
		for(var key:String in m_localization[locale])
		{
			if(m_localization[locale][key] == localizedName)
			{
				return key;
			}
		}
		return undefined;
	}
}