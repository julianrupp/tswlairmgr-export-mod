import com.Utils.LDBFormat;

class net.nex4k.data.lairs.LairBossFragmentSetOrientation
{
	public static var NORTH_WEST:String = "nw";
	public static var NORTH:String = "n";
	public static var NORTH_EAST:String = "ne";
	public static var WEST:String = "w";
	public static var CENTER:String = "c";
	public static var EAST:String = "e";
	public static var SOUTH_WEST:String = "sw";
	public static var SOUTH:String = "s";
	public static var SOUTH_EAST:String = "se";
	
	public static var m_orientations = [
		NORTH_WEST, NORTH, NORTH_EAST,
		WEST, CENTER, EAST,
		SOUTH_WEST, SOUTH, SOUTH_EAST
	];
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {
			NORTH_WEST: "NW", NORTH: "N", NORTH_EAST: "NE",
			WEST: "W", CENTER: "C", EAST: "E",
			SOUTH_WEST: "SW", SOUTH: "S", SOUTH_EAST: "SE"
		};
		
		m_localization["de"] = {
			NORTH_WEST: "NW", NORTH: "N", NORTH_EAST: "NE",
			WEST: "W", CENTER: "C", EAST: "E",
			SOUTH_WEST: "SW", SOUTH: "S", SOUTH_EAST: "SE"
		};
		
		m_localization["fr"] = {
			NORTH_WEST: "NO", NORTH: "N", NORTH_EAST: "NE",
			WEST: "O", CENTER: "C", EAST: "E",
			SOUTH_WEST: "SO", SOUTH: "S", SOUTH_EAST: "SE"
		};
		
		m_localization_initialized = true;
	}
	
	public static function getName(enumConstant:String) : String
	{
		return getLocalizedName(com.Utils.LDBFormat.GetCurrentLanguageCode(), enumConstant);
	}
	
	public static function getLocalizedName(enumConstant:String, locale:String) : String
	{
		if(!m_localization_initialized) initLocalization();
		return m_localization[locale][enumConstant] || "missing loc";
	}
}