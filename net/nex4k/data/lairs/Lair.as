import com.Utils.LDBFormat;

class net.nex4k.data.lairs.Lair
{
	public static var DUMA_BEACH:String = "km";
	public static var THE_OVERLOOKED:String = "sc";
	public static var THE_CASINO_PITS:String = "bm";
	public static var THE_SUMMITS:String = "sd";
	public static var THE_BLIGHTED_KINGDOM:String = "cs";
	public static var THE_DREAD_RETREAT:String = "bf";
	public static var THE_SPOILED_GARDENS:String = "sf";
	public static var THE_MOTHERLAND:String = "cf";
	// public static var UNNAMED:String = "kd"; // unused so far
	
	private var m_locale:String;
	private var m_code:String;
	private var m_bosses:Array;
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	public function Lair(code:String, bosses:Array)
	{
		this.m_locale = com.Utils.LDBFormat.GetCurrentLanguageCode();
		this.m_code = code;
		this.m_bosses = bosses;
	}
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {};
		m_localization["en"][DUMA_BEACH] = "Duma Beach";
		m_localization["en"][THE_OVERLOOKED] = "The Overlooked";
		m_localization["en"][THE_CASINO_PITS] = "The Casino Pits";
		m_localization["en"][THE_SUMMITS] = "The Summits";
		m_localization["en"][THE_BLIGHTED_KINGDOM] = "The Blighted Kingdom";
		m_localization["en"][THE_DREAD_RETREAT] = "The Dread Retreat";
		m_localization["en"][THE_SPOILED_GARDENS] = "The Spoiled Gardens";
		m_localization["en"][THE_MOTHERLAND] = "The Motherland";
		// m_localization["en"][UNNAMED] = "Unnamed"; // unused so far
		
		m_localization["de"] = {};
		m_localization["de"][DUMA_BEACH] = "Duma-Strand";
		m_localization["de"][THE_OVERLOOKED] = "Die Übersehenen";
		m_localization["de"][THE_CASINO_PITS] = "Die Casino-Gruben";
		m_localization["de"][THE_SUMMITS] = "Die Gipfel";
		m_localization["de"][THE_BLIGHTED_KINGDOM] = "Das heimgesuchte Königreich";
		m_localization["de"][THE_DREAD_RETREAT] = "Die Zuflucht des Grauens";
		m_localization["de"][THE_SPOILED_GARDENS] = "Der überzüchtete Garten";
		m_localization["de"][THE_MOTHERLAND] = "Das Mutterland";
		// m_localization["de"][UNNAMED] = "Unnamed"; // unused so far
		
		m_localization["fr"] = {};
		m_localization["fr"][DUMA_BEACH] = "Duma Beach";
		m_localization["fr"][THE_OVERLOOKED] = "Le Lieu de l'Oubli";
		m_localization["fr"][THE_CASINO_PITS] = "Les Fosses du Casino";
		m_localization["fr"][THE_SUMMITS] = "Les Sommets";
		m_localization["fr"][THE_BLIGHTED_KINGDOM] = "Le Royaume Flétri";
		m_localization["fr"][THE_DREAD_RETREAT] = "La Retraite Effroyable";
		m_localization["fr"][THE_SPOILED_GARDENS] = "Le Jardin Corrompu";
		m_localization["fr"][THE_MOTHERLAND] = "Les Terres Natales";
		// m_localization["fr"][UNNAMED] = "Unnamed"; // unused so far
		
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
	
	public function getBosses() : Array
	{
		return this.m_bosses;
	}
}