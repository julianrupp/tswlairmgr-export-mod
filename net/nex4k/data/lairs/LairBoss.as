import com.Utils.LDBFormat;

import net.nex4k.data.lairs.LairBossFragmentSet;

class net.nex4k.data.lairs.LairBoss
{
	public static var CTA_THA:String = "km01";
	public static var WREATHMOTHER:String = "km02";
	public static var HEAD_OF_GLAMR:String = "km03";
	public static var LOST_SARCOMA:String = "sc01";
	public static var FILTH_VECTOR:String = "sc02";
	public static var SHADOW_OF_DEPRAVITY:String = "sc03";
	public static var POLLUTED_EFFIGY:String = "bm01";
	public static var FERROUS_DUELLER:String = "bm02";
	public static var BLUE_HARVESTER:String = "bm03";
	public static var EYE_OF_THE_SWARM:String = "sd01";
	public static var LIVES_ON_SNAKES:String = "sd02";
	public static var THE_IDOLATOR:String = "sd03";
	public static var NYARLAT_ROYAL_EXECUTIONER:String = "cs01";
	public static var HASSAN_THE_RUINER:String = "cs02";
	public static var DUNEBACK:String = "cs03";
	public static var RED_REVERE:String = "bf01";
	public static var THE_PLAGUE:String = "bf02";
	public static var THE_SCYTHIAN:String = "bf03";
	public static var SHE_OF_WOE:String = "sf01";
	public static var AVATAR_OF_THE_CREEP:String = "sf02";
	public static var DACIAN_PUREBLOOD:String = "sf03";
	public static var DEVOURER:String = "cf01";
	public static var THE_VOIVODE:String = "cf02";
	public static var VULKAN:String = "cf03";
	
	private var m_locale:String;
	private var m_code:String;
	private var m_fragmentSet:LairBossFragmentSet;
	
	private static var m_localization:Object;
	private static var m_localization_initialized:Boolean = false;
	
	public function LairBoss(code:String, fragmentSet:LairBossFragmentSet)
	{
		this.m_locale = com.Utils.LDBFormat.GetCurrentLanguageCode();
		this.m_code = code;
		this.m_fragmentSet = fragmentSet;
	}
	
	private static function initLocalization()
	{
		m_localization = {};
		
		m_localization["en"] = {};
		m_localization["en"][CTA_THA] = {boss: "Cta-Tha", mission: "Unto the Beach"};
		m_localization["en"][WREATHMOTHER] = {boss: "Wreathmother", mission: "Coralations"};
		m_localization["en"][HEAD_OF_GLAMR] = {boss: "Head of Glamr", mission: "The Last Strand"};
		m_localization["en"][LOST_SARCOMA] = {boss: "Lost Sarcoma", mission: "Sinking Feelings"};
		m_localization["en"][FILTH_VECTOR] = {boss: "Filth.Vector", mission: "Nobel Calling"};
		m_localization["en"][SHADOW_OF_DEPRAVITY] = {boss: "Shadow of Depravity", mission: "The Cover-up"};
		m_localization["en"][POLLUTED_EFFIGY] = {boss: "Polluted Effigy", mission: "The House Always Win"};
		m_localization["en"][FERROUS_DUELLER] = {boss: "Ferrous Dueller", mission: "Picking Up the Pieces"};
		m_localization["en"][BLUE_HARVESTER] = {boss: "Blue Harvester", mission: "The Whole Truth"};
		m_localization["en"][EYE_OF_THE_SWARM] = {boss: "Eye of the Swarm", mission: "Return of the Red Nights"};
		m_localization["en"][LIVES_ON_SNAKES] = {boss: "Lives-on-Snakes", mission: "Blood Garments"};
		m_localization["en"][THE_IDOLATOR] = {boss: "The Idolator", mission: "Up In Smoke"};
		m_localization["en"][NYARLAT_ROYAL_EXECUTIONER] = {boss: "Nyarlat, Royal Executioner", mission: "Citadel of Pain"};
		m_localization["en"][HASSAN_THE_RUINER] = {boss: "Hassan, the Ruiner", mission: "The Trinket Trail"};
		m_localization["en"][DUNEBACK] = {boss: "Duneback", mission: "The Black Pharaoh's Guard"};
		m_localization["en"][RED_REVERE] = {boss: "Red Revere", mission: "Midnight Mass"};
		m_localization["en"][THE_PLAGUE] = {boss: "The Plague", mission: "Blessed Are The Makers"};
		m_localization["en"][THE_SCYTHIAN] = {boss: "The Scythian", mission: "Restoration"};
		m_localization["en"][SHE_OF_WOE] = {boss: "She of Woe", mission: "The Spoils of Cold War"};
		m_localization["en"][AVATAR_OF_THE_CREEP] = {boss: "Avatar of the Creep", mission: "Seedy Underbelly"};
		m_localization["en"][DACIAN_PUREBLOOD] = {boss: "Dacian Pureblood", mission: "Kreep Rush"};
		m_localization["en"][DEVOURER] = {boss: "Devourer", mission: "From Beyond the Iron Curtain"};
		m_localization["en"][THE_VOIVODE] = {boss: "The Voivode", mission: "The Mortal Coil"};
		m_localization["en"][VULKAN] = {boss: "Vulkan", mission: "The Shipping News"};
		
		m_localization["de"] = {};
		m_localization["de"][CTA_THA] = {boss: "Cta-Tha", mission: "Bis zum Strand"};
		m_localization["de"][WREATHMOTHER] = {boss: "Kranzmutter", mission: "Algenartig"};
		m_localization["de"][HEAD_OF_GLAMR] = {boss: "Kopf von Glamr", mission: "Der letzte Strang"};
		m_localization["de"][LOST_SARCOMA] = {boss: "Verlorenes Sarkom", mission: "Sinkender Mut"};
		m_localization["de"][FILTH_VECTOR] = {boss: "Schmutz.Vektor", mission: "Grüße von Nobel"};
		m_localization["de"][SHADOW_OF_DEPRAVITY] = {boss: "Schatten der Verdorbenheit", mission: "Deckung"};
		m_localization["de"][POLLUTED_EFFIGY] = {boss: "Verschmutztes Abbild", mission: "Das Haus gewinnt immer"};
		m_localization["de"][FERROUS_DUELLER] = {boss: "Eisenhaltiger Duellant", mission: "Zusammenführung der Teile"};
		m_localization["de"][BLUE_HARVESTER] = {boss: "Blauer Ernter", mission: "Die ganze Wahrheit"};
		m_localization["de"][EYE_OF_THE_SWARM] = {boss: "Auge des Schwarms", mission: "Rückkehr der Roten Nächte"};
		m_localization["de"][LIVES_ON_SNAKES] = {boss: "Lebt-von-Schlangen", mission: "Blutgewänder"};
		m_localization["de"][THE_IDOLATOR] = {boss: "Der Götzendiener", mission: "In Rauch aufgegangen"};
		m_localization["de"][NYARLAT_ROYAL_EXECUTIONER] = {boss: "Nyarlat, Königlicher Henker", mission: "Zitadelle der Schmerzen"};
		m_localization["de"][HASSAN_THE_RUINER] = {boss: "Hassan, der Verheerer", mission: "Die Spur der Schmuckstücke"};
		m_localization["de"][DUNEBACK] = {boss: "Dünenrücken", mission: "Die Wache des Schwarzen Pharao"};
		m_localization["de"][RED_REVERE] = {boss: "Rote Verehrung", mission: "Mitternachtsmesse"};
		m_localization["de"][THE_PLAGUE] = {boss: "Die Pest", mission: "Gesegnet sind die Schöpfer"};
		m_localization["de"][THE_SCYTHIAN] = {boss: "Der Skythe", mission: "Restaurierung"};
		m_localization["de"][SHE_OF_WOE] = {boss: "Sie vom Leid", mission: "Die Ausbeute des Kalten Krieges"};
		m_localization["de"][AVATAR_OF_THE_CREEP] = {boss: "Avatar des Widerlings", mission: "Zwielichtige Unterwelt"};
		m_localization["de"][DACIAN_PUREBLOOD] = {boss: "Dakisches Reinblut", mission: "Ansturm der Widerlinge"};
		m_localization["de"][DEVOURER] = {boss: "Verschlinger", mission: "Von jenseits des Eisernen Vorhangs"};
		m_localization["de"][THE_VOIVODE] = {boss: "Der Woiwode", mission: "Die sterbliche Spule"};
		m_localization["de"][VULKAN] = {boss: "Vulkan", mission: "Frachtmeldungen"};
		
		m_localization["fr"] = {};
		m_localization["fr"][CTA_THA] = {boss: "Cta-Tha", mission: "Sur la plage"};
		m_localization["fr"][WREATHMOTHER] = {boss: "Mère des volutes", mission: "Algolémie"};
		m_localization["fr"][HEAD_OF_GLAMR] = {boss: "Tête de Glamr", mission: "Le barouf d'honneur"};
		m_localization["fr"][LOST_SARCOMA] = {boss: "Sarcome perdu", mission: "Pressentiments nauséabonds"};
		m_localization["fr"][FILTH_VECTOR] = {boss: "Vecteur de Souillure", mission: "L'appel de Nobel"};
		m_localization["fr"][SHADOW_OF_DEPRAVITY] = {boss: "Ombre de dépravation", mission: "La couverture"};
		m_localization["fr"][POLLUTED_EFFIGY] = {boss: "Effigie Contaminée", mission: "La banque gagne à tous les coups"};
		m_localization["fr"][FERROUS_DUELLER] = {boss: "Duelliste ferreux", mission: "Morceau par morceau"};
		m_localization["fr"][BLUE_HARVESTER] = {boss: "Moissonneur bleu", mission: "Toute la vérité"};
		m_localization["fr"][EYE_OF_THE_SWARM] = {boss: "Œil de l'essaim", mission: "Le retour des Nuits Rouges"};
		m_localization["fr"][LIVES_ON_SNAKES] = {boss: "Mange-les-vers", mission: "Vêtures sanglantes"};
		m_localization["fr"][THE_IDOLATOR] = {boss: "L'idolâtre", mission: "Partis en fumée"};
		m_localization["fr"][NYARLAT_ROYAL_EXECUTIONER] = {boss: "Nyarlat, le bourreau royal", mission: "La citadelle des tourments"};
		m_localization["fr"][HASSAN_THE_RUINER] = {boss: "Hassan le démanteleur", mission: "La piste aux babioles"};
		m_localization["fr"][DUNEBACK] = {boss: "Dos-de-dune", mission: "La garde du Pharaon Noir"};
		m_localization["fr"][RED_REVERE] = {boss: "Vénération rouge", mission: "Messe du minuit"};
		m_localization["fr"][THE_PLAGUE] = {boss: "La peste", mission: "Loués soient les créateurs"};
		m_localization["fr"][THE_SCYTHIAN] = {boss: "Le Scythe", mission: "Restauration"};
		m_localization["fr"][SHE_OF_WOE] = {boss: "Celle des malheurs", mission: "Les dépouilles de la guerre froide"};
		m_localization["fr"][AVATAR_OF_THE_CREEP] = {boss: "Avatar de l'infâme", mission: "Montée en graine"};
		m_localization["fr"][DACIAN_PUREBLOOD] = {boss: "Pur-sang de Dacie", mission: "Haro sur les Rampants"};
		m_localization["fr"][DEVOURER] = {boss: "Dévoreur", mission: "Par-delà le rideau de fer"};
		m_localization["fr"][THE_VOIVODE] = {boss: "Le Voïvode", mission: "Sales bobines"};
		m_localization["fr"][VULKAN] = {boss: "Vulkan", mission: "Suivi de commande"};
		
		m_localization_initialized = true;
	}
	
	public function getCode() : String
	{
		return this.m_code;
	}
	
	public function getBossName() : String
	{
		return getLocalizedBossName(this.m_locale);
	}
	
	public function getLocalizedBossName(locale:String) : String
	{
		if(!m_localization_initialized) initLocalization();
		return m_localization[locale][this.m_code].boss;
	}
	
	public function getMissionName() : String
	{
		return getLocalizedMissionName(this.m_locale);
	}
	
	public function getLocalizedMissionName(locale:String) : String
	{
		if(!m_localization_initialized) initLocalization();
		return m_localization[locale][this.m_code].mission;
	}
	
	public function getFragmentSet() : LairBossFragmentSet
	{
		return this.m_fragmentSet;
	}
}