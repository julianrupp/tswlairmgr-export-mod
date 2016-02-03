import com.Utils.LDBFormat;

class net.nex4k.data.lairs.AlphabetGreek extends net.nex4k.data.lairs.Alphabet
{
	public static var ALPHA:String = "alpha";
	public static var BETA:String = "beta";
	public static var GAMMA:String = "gamma";
	public static var DELTA:String = "delta";
	public static var EPSILON:String = "epsilon";
	public static var ZETA:String = "zeta";
	public static var ETA:String = "eta";
	public static var THETA:String = "theta";
	public static var IOTA:String = "iota";
	public static var KAPPA:String = "kappa";
	public static var LAMBDA:String = "lambda";
	public static var MU:String = "mu";
	public static var NU:String = "nu";
	public static var XI:String = "xi";
	public static var OMICRON:String = "omicron";
	public static var PI:String = "pi";
	public static var RHO:String = "rho";
	public static var SIGMA:String = "sigma";
	public static var TAU:String = "tau";
	public static var UPSILON:String = "upsilon";
	public static var PHI:String = "phi";
	public static var CHI:String = "chi";
	public static var PSI:String = "psi";
	public static var OMEGA:String = "omega";
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {};
		m_localization["en"][ALPHA] = "Alpha";
		m_localization["en"][BETA] = "Beta";
		m_localization["en"][GAMMA] = "Gamma";
		m_localization["en"][DELTA] = "Delta";
		m_localization["en"][EPSILON] = "Epsilon";
		m_localization["en"][ZETA] = "Zeta";
		m_localization["en"][ETA] = "Eta";
		m_localization["en"][THETA] = "Theta";
		m_localization["en"][IOTA] = "Iota";
		m_localization["en"][KAPPA] = "Kappa";
		m_localization["en"][LAMBDA] = "Lambda";
		m_localization["en"][MU] = "Mu";
		m_localization["en"][NU] = "Nu";
		m_localization["en"][XI] = "Xi";
		m_localization["en"][OMICRON] = "Omicron";
		m_localization["en"][PI] = "Pi";
		m_localization["en"][RHO] = "Rho";
		m_localization["en"][SIGMA] = "Sigma";
		m_localization["en"][TAU] = "Tau";
		m_localization["en"][UPSILON] = "Upsilon";
		m_localization["en"][PHI] = "Phi";
		m_localization["en"][CHI] = "Chi";
		m_localization["en"][PSI] = "Psi";
		m_localization["en"][OMEGA] = "Omega";
		
		m_localization["de"] = {};
		m_localization["de"][ALPHA] = "Alpha";
		m_localization["de"][BETA] = "Beta";
		m_localization["de"][GAMMA] = "Gamma";
		m_localization["de"][DELTA] = "Delta";
		m_localization["de"][EPSILON] = "Epsilon";
		m_localization["de"][ZETA] = "Zeta";
		m_localization["de"][ETA] = "Eta";
		m_localization["de"][THETA] = "Theta";
		m_localization["de"][IOTA] = "Iota";
		m_localization["de"][KAPPA] = "Kappa";
		m_localization["de"][LAMBDA] = "Lambda";
		m_localization["de"][MU] = "Mu";
		m_localization["de"][NU] = "Nu";
		m_localization["de"][XI] = "Xi";
		m_localization["de"][OMICRON] = "Omikron";
		m_localization["de"][PI] = "Pi";
		m_localization["de"][RHO] = "Rho";
		m_localization["de"][SIGMA] = "Sigma";
		m_localization["de"][TAU] = "Tau";
		m_localization["de"][UPSILON] = "Ypsilon";
		m_localization["de"][PHI] = "Phi";
		m_localization["de"][CHI] = "Chi";
		m_localization["de"][PSI] = "Psi";
		m_localization["de"][OMEGA] = "Omega";
		
		m_localization["fr"] = {};
		m_localization["fr"][ALPHA] = "Alpha";
		m_localization["fr"][BETA] = "Bêta";
		m_localization["fr"][GAMMA] = "Gamma";
		m_localization["fr"][DELTA] = "Delta";
		m_localization["fr"][EPSILON] = "Epsilon";
		m_localization["fr"][ZETA] = "Zêta";
		m_localization["fr"][ETA] = "Êta";
		m_localization["fr"][THETA] = "Thêta";
		m_localization["fr"][IOTA] = "Iota";
		m_localization["fr"][KAPPA] = "Kappa";
		m_localization["fr"][LAMBDA] = "Lambda";
		m_localization["fr"][MU] = "Mu";
		m_localization["fr"][NU] = "Nu";
		m_localization["fr"][XI] = "Xi";
		m_localization["fr"][OMICRON] = "Omicron";
		m_localization["fr"][PI] = "Pi";
		m_localization["fr"][RHO] = "Rhô";
		m_localization["fr"][SIGMA] = "Sigma";
		m_localization["fr"][TAU] = "Tau";
		m_localization["fr"][UPSILON] = "Upsilon";
		m_localization["fr"][PHI] = "Phi";
		m_localization["fr"][CHI] = "Chi";
		m_localization["fr"][PSI] = "Psi";
		m_localization["fr"][OMEGA] = "Oméga";
		
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