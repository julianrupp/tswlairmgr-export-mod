import com.Utils.LDBFormat;

class net.nex4k.data.lairs.RegionalBossFragmentSetOrientation
{
	public static var NORTH_NORTH_WEST_WEST:String = "nnww";
	public static var NORTH_NORTH_WEST:String = "nnw";
	public static var NORTH_NORTH_EAST:String = "nne";
	public static var NORTH_NORTH_EAST_EAST:String = "nnee";
	public static var NORTH_WEST_WEST:String = "nww";
	public static var NORTH_WEST:String = "nw";
	public static var NORTH_EAST:String = "ne";
	public static var NORTH_EAST_EAST:String = "nee";
	public static var SOUTH_WEST_WEST:String = "sww";
	public static var SOUTH_WEST:String = "sw";
	public static var SOUTH_EAST:String = "se";
	public static var SOUTH_EAST_EAST:String = "see";
	public static var SOUTH_SOUTH_WEST_WEST:String = "ssww";
	public static var SOUTH_SOUTH_WEST:String = "ssw";
	public static var SOUTH_SOUTH_EAST:String = "sse";
	public static var SOUTH_SOUTH_EAST_EAST:String = "ssee";
	
	public static var m_orientations = [
		NORTH_NORTH_WEST_WEST, NORTH_NORTH_WEST, NORTH_NORTH_EAST, NORTH_NORTH_EAST_EAST,
		NORTH_WEST_WEST, NORTH_WEST, NORTH_EAST, NORTH_EAST_EAST,
		SOUTH_WEST_WEST, SOUTH_WEST, SOUTH_EAST, SOUTH_EAST_EAST,
		SOUTH_SOUTH_WEST_WEST, SOUTH_SOUTH_WEST, SOUTH_SOUTH_EAST, SOUTH_SOUTH_EAST_EAST
	];
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {
			NORTH_NORTH_WEST_WEST: "NNWW", NORTH_NORTH_WEST: "NNW", NORTH_NORTH_EAST: "NNE", NORTH_NORTH_EAST_EAST: "NNEE",
			NORTH_WEST_WEST: "NWW", NORTH_WEST: "NW", NORTH_EAST: "NE", NORTH_EAST_EAST: "NEE",
			SOUTH_WEST_WEST: "SWW", SOUTH_WEST: "SW", SOUTH_EAST: "SE", SOUTH_EAST_EAST: "SEE",
			SOUTH_SOUTH_WEST_WEST: "SSWW", SOUTH_SOUTH_WEST: "SSW", SOUTH_SOUTH_EAST: "SSE", SOUTH_SOUTH_EAST_EAST: "SSEE"
		};
		
		m_localization["de"] = {
			NORTH_NORTH_WEST_WEST: "NNWW", NORTH_NORTH_WEST: "NNW", NORTH_NORTH_EAST: "NNE", NORTH_NORTH_EAST_EAST: "NNEE",
			NORTH_WEST_WEST: "NWW", NORTH_WEST: "NW", NORTH_EAST: "NE", NORTH_EAST_EAST: "NEE",
			SOUTH_WEST_WEST: "SWW", SOUTH_WEST: "SW", SOUTH_EAST: "SE", SOUTH_EAST_EAST: "SEE",
			SOUTH_SOUTH_WEST_WEST: "SSWW", SOUTH_SOUTH_WEST: "SSW", SOUTH_SOUTH_EAST: "SSE", SOUTH_SOUTH_EAST_EAST: "SSEE"
		};
		
		m_localization["fr"] = {
			NORTH_NORTH_WEST_WEST: "NNOO", NORTH_NORTH_WEST: "NNO", NORTH_NORTH_EAST: "NNE", NORTH_NORTH_EAST_EAST: "NNEE",
			NORTH_WEST_WEST: "NOO", NORTH_WEST: "NO", NORTH_EAST: "NE", NORTH_EAST_EAST: "NEE",
			SOUTH_WEST_WEST: "SOO", SOUTH_WEST: "SO", SOUTH_EAST: "SE", SOUTH_EAST_EAST: "SEE",
			SOUTH_SOUTH_WEST_WEST: "SSOO", SOUTH_SOUTH_WEST: "SSO", SOUTH_SOUTH_EAST: "SSE", SOUTH_SOUTH_EAST_EAST: "SSEE"
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