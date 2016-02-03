import net.nex4k.data.lairs.AlphabetPhoenician;

class net.nex4k.data.lairs.RegionalBossFragment extends net.nex4k.data.lairs.Fragment
{
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	public function RegionalBossFragment(letter:String, number:Number)
	{
		super(letter, number);
	}
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {
			namePattern: "Cleansing Ritual Fragment: {letter} {number}"
		};
		
		m_localization["de"] = {
			namePattern: "Säuberungsritualfragment: {letter} {number}"
		};
		
		m_localization["fr"] = {
			namePattern: "Fragment de rituel purificateur : {letter} {number}"
		};
		
		m_localization_initialized = true;
	}
	
	public function getName() : String
	{
		return getLocalizedName(com.Utils.LDBFormat.GetCurrentLanguageCode());
	}
	
	public function getLocalizedName(locale:String) : String
	{
		if(!m_localization_initialized) initLocalization();
		var name = m_localization[locale].namePattern || "missing loc";
		
		name = name.replace("{letter}", AlphabetPhoenician.getLocalizedName(getLetter(), locale));
		
		var paddedNumber = "" + getNumber();
		while(paddedNumber.length < 2)
		{
			paddedNumber = "0" + paddedNumber;
		}
		name = name.replace("{number}", paddedNumber);
		
		return name;
	}
}