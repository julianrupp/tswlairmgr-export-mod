import net.nex4k.data.lairs.*;

class net.nex4k.data.LairData
{
	private static var m_data:Array;
	private static var m_data_initialized:Boolean = false;

	private static function initData()
	{
		m_data = new Array();
		
		initData_Solomon_Island();
		initData_Egypt();
		initData_Transylvania();
		
		m_data_initialized = true;
	}
	
	private static function initData_Solomon_Island()
	{
		var fragmentSet_km01 = {};
		fragmentSet_km01[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.THETA, 4);
		fragmentSet_km01[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.KAPPA, 9);
		fragmentSet_km01[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.PSI, 8);
		fragmentSet_km01[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.CHI, 1);
		fragmentSet_km01[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.EPSILON, 5);
		fragmentSet_km01[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.ETA, 5);
		fragmentSet_km01[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.XI, 3);
		fragmentSet_km01[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.ZETA, 8);
		fragmentSet_km01[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.BETA, 6);
		
		var fragmentSet_km02 = {};
		fragmentSet_km02[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.LAMBDA, 3);
		fragmentSet_km02[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.PI, 4);
		fragmentSet_km02[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.UPSILON, 4);
		fragmentSet_km02[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.RHO, 7);
		fragmentSet_km02[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.TAU, 5);
		fragmentSet_km02[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.XI, 5);
		fragmentSet_km02[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.RHO, 1);
		fragmentSet_km02[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.TAU, 6);
		fragmentSet_km02[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.OMICRON, 7);
		
		var fragmentSet_km03 = {};
		fragmentSet_km03[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.GAMMA, 9);
		fragmentSet_km03[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.PHI, 3);
		fragmentSet_km03[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.GAMMA, 5);
		fragmentSet_km03[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.ALPHA, 3);
		fragmentSet_km03[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.XI, 4);
		fragmentSet_km03[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.THETA, 9);
		fragmentSet_km03[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.LAMBDA, 1);
		fragmentSet_km03[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.GAMMA, 1);
		fragmentSet_km03[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.PHI, 7);
		
		var fragmentSet_sc01 = {};
		fragmentSet_sc01[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.PI, 3);
		fragmentSet_sc01[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.XI, 8);
		fragmentSet_sc01[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.CHI, 4);
		fragmentSet_sc01[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.OMICRON, 5);
		fragmentSet_sc01[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.DELTA, 4);
		fragmentSet_sc01[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.UPSILON, 9);
		fragmentSet_sc01[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.OMEGA, 5);
		fragmentSet_sc01[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.MU, 1);
		fragmentSet_sc01[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.KAPPA, 6);
		
		var fragmentSet_sc02 = {};
		fragmentSet_sc02[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.KAPPA, 5);
		fragmentSet_sc02[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.SIGMA, 2);
		fragmentSet_sc02[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.ZETA, 6);
		fragmentSet_sc02[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.ALPHA, 6);
		fragmentSet_sc02[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.IOTA, 3);
		fragmentSet_sc02[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.THETA, 6);
		fragmentSet_sc02[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.LAMBDA, 2);
		fragmentSet_sc02[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.PSI, 5);
		fragmentSet_sc02[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.PSI, 2);
		
		var fragmentSet_sc03 = {};
		fragmentSet_sc03[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.ZETA, 4);
		fragmentSet_sc03[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.UPSILON, 1);
		fragmentSet_sc03[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.OMEGA, 9);
		fragmentSet_sc03[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.KAPPA, 4);
		fragmentSet_sc03[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.EPSILON, 9);
		fragmentSet_sc03[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.DELTA, 2);
		fragmentSet_sc03[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.OMICRON, 4);
		fragmentSet_sc03[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.GAMMA, 6);
		fragmentSet_sc03[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.PSI, 3);
		
		var fragmentSet_bm01 = {};
		fragmentSet_bm01[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.NU, 5);
		fragmentSet_bm01[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.CHI, 7);
		fragmentSet_bm01[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.GAMMA, 4);
		fragmentSet_bm01[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.TAU, 7);
		fragmentSet_bm01[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.ZETA, 3);
		fragmentSet_bm01[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.CHI, 5);
		fragmentSet_bm01[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.IOTA, 5);
		fragmentSet_bm01[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.PI, 9);
		fragmentSet_bm01[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.NU, 4);
		
		var fragmentSet_bm02 = {};
		fragmentSet_bm02[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.KAPPA, 3);
		fragmentSet_bm02[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.UPSILON, 6);
		fragmentSet_bm02[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.IOTA, 6);
		fragmentSet_bm02[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.DELTA, 5);
		fragmentSet_bm02[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.MU, 6);
		fragmentSet_bm02[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.OMICRON, 1);
		fragmentSet_bm02[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.ZETA, 1);
		fragmentSet_bm02[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.KAPPA, 7);
		fragmentSet_bm02[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.PHI, 4);
		
		var fragmentSet_bm03 = {};
		fragmentSet_bm03[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.UPSILON, 7);
		fragmentSet_bm03[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.ZETA, 9);
		fragmentSet_bm03[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.TAU, 2);
		fragmentSet_bm03[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.BETA, 8);
		fragmentSet_bm03[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.NU, 2);
		fragmentSet_bm03[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.SIGMA, 6);
		fragmentSet_bm03[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.PHI, 6);
		fragmentSet_bm03[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.ETA, 1);
		fragmentSet_bm03[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.LAMBDA, 5);
		
		var fragmentSet_sol = {};
		fragmentSet_sol[RegionalBossFragmentSetOrientation.NORTH_NORTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.SADHE, 9);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.NORTH_NORTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.PE, 8);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.NORTH_NORTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.BETH, 2);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.NORTH_NORTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.GAMAL, 3);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.NORTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.LAMADH, 6);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.NORTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.SHIN, 3);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.NORTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.LAMADH, 3);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.NORTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.HE, 5);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.SOUTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.BETH, 5);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.SOUTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.ZAIN, 7);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.SOUTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.BETH, 8);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.SOUTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.TETH, 9);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.SHIN, 6);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.HETH, 8);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.ALAPH, 7);
		fragmentSet_sol[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.MIM, 7);
		
		m_data.push(
			new Region(
				Region.SOLOMON_ISLAND,
				[
					new Zone(
						Zone.KINGSMOUTH,
						[new Lair(
							Lair.DUMA_BEACH,
							[
								new LairBoss(
									LairBoss.CTA_THA,
									new LairBossFragmentSet(fragmentSet_km01)
								),
								new LairBoss(
									LairBoss.WREATHMOTHER,
									new LairBossFragmentSet(fragmentSet_km02)
								),
								new LairBoss(
									LairBoss.HEAD_OF_GLAMR,
									new LairBossFragmentSet(fragmentSet_km03)
								)
							]
						)]
					),
					new Zone(
						Zone.SAVAGE_COAST,
						[new Lair(
							Lair.THE_OVERLOOKED,
							[
								new LairBoss(
									LairBoss.LOST_SARCOMA,
									new LairBossFragmentSet(fragmentSet_sc01)
								),
								new LairBoss(
									LairBoss.FILTH_VECTOR,
									new LairBossFragmentSet(fragmentSet_sc02)
								),
								new LairBoss(
									LairBoss.SHADOW_OF_DEPRAVITY,
									new LairBossFragmentSet(fragmentSet_sc03)
								)
							]
						)]
					),
					new Zone(
						Zone.BLUE_MOUNTAIN,
						[new Lair(
							Lair.THE_CASINO_PITS,
							[
								new LairBoss(
									LairBoss.POLLUTED_EFFIGY,
									new LairBossFragmentSet(fragmentSet_bm01)
								),
								new LairBoss(
									LairBoss.FERROUS_DUELLER,
									new LairBossFragmentSet(fragmentSet_bm02)
								),
								new LairBoss(
									LairBoss.BLUE_HARVESTER,
									new LairBossFragmentSet(fragmentSet_bm03)
								)
							]
						)]
					)
				],
				new RegionalBoss(
					RegionalBoss.ASPECT_OF_THE_LONG_TOOTHED,
					new RegionalBossFragmentSet(fragmentSet_sol)
				)
			)
		);
	}
	
	private static function initData_Egypt()
	{
		var fragmentSet_sd01 = {};
		fragmentSet_sd01[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.IOTA, 2);
		fragmentSet_sd01[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.BETA, 7);
		fragmentSet_sd01[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.MU, 5);
		fragmentSet_sd01[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.PHI, 9);
		fragmentSet_sd01[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.ALPHA, 9);
		fragmentSet_sd01[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.TAU, 9);
		fragmentSet_sd01[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.LAMBDA, 6);
		fragmentSet_sd01[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.BETA, 3);
		fragmentSet_sd01[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.UPSILON, 3);
		
		var fragmentSet_sd02 = {};
		fragmentSet_sd02[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.IOTA, 1);
		fragmentSet_sd02[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.NU, 7);
		fragmentSet_sd02[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.ALPHA, 5);
		fragmentSet_sd02[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.MU, 4);
		fragmentSet_sd02[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.CHI, 6);
		fragmentSet_sd02[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.ETA, 8);
		fragmentSet_sd02[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.OMICRON, 8);
		fragmentSet_sd02[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.NU, 8);
		fragmentSet_sd02[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.ZETA, 5);
		
		var fragmentSet_sd03 = {};
		fragmentSet_sd03[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.OMEGA, 7);
		fragmentSet_sd03[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.PI, 8);
		fragmentSet_sd03[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.EPSILON, 3);
		fragmentSet_sd03[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.LAMBDA, 9);
		fragmentSet_sd03[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.GAMMA, 2);
		fragmentSet_sd03[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.OMEGA, 1);
		fragmentSet_sd03[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.THETA, 8);
		fragmentSet_sd03[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.DELTA, 3);
		fragmentSet_sd03[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.RHO, 4);
		
		var fragmentSet_cs01 = {};
		fragmentSet_cs01[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.UPSILON, 2);
		fragmentSet_cs01[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.PHI, 2);
		fragmentSet_cs01[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.DELTA, 7);
		fragmentSet_cs01[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.ETA, 2);
		fragmentSet_cs01[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.PSI, 6);
		fragmentSet_cs01[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.XI, 1);
		fragmentSet_cs01[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.RHO, 3);
		fragmentSet_cs01[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.NU, 1);
		fragmentSet_cs01[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.OMICRON, 6);
		
		var fragmentSet_cs02 = {};
		fragmentSet_cs02[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.PHI, 5);
		fragmentSet_cs02[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.BETA, 1);
		fragmentSet_cs02[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.IOTA, 4);
		fragmentSet_cs02[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.SIGMA, 7);
		fragmentSet_cs02[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.CHI, 3);
		fragmentSet_cs02[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.RHO, 6);
		fragmentSet_cs02[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.XI, 6);
		fragmentSet_cs02[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.ALPHA, 1);
		fragmentSet_cs02[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.NU, 3);
		
		var fragmentSet_cs03 = {};
		fragmentSet_cs03[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.PI, 7);
		fragmentSet_cs03[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.PSI, 9);
		fragmentSet_cs03[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.THETA, 3);
		fragmentSet_cs03[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.OMICRON, 9);
		fragmentSet_cs03[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.TAU, 4);
		fragmentSet_cs03[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.CHI, 2);
		fragmentSet_cs03[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.PI, 2);
		fragmentSet_cs03[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.IOTA, 8);
		fragmentSet_cs03[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.LAMBDA, 7);
		
		var fragmentSet_egy = {};
		fragmentSet_egy[RegionalBossFragmentSetOrientation.NORTH_NORTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.TETH, 3);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.NORTH_NORTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.KAPH, 5);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.NORTH_NORTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.GAMAL, 6);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.NORTH_NORTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.SEMKATH, 6);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.NORTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.DALATH, 7);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.NORTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.PE, 2);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.NORTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.WAW, 9);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.NORTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.DALATH, 1);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.SOUTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.E, 1);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.SOUTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.YUDH, 1);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.SOUTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.MIM, 4);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.SOUTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.WAW, 6);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.E, 7);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.SEMKATH, 9);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.QOPH, 1);
		fragmentSet_egy[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.HETH, 2);
		
		m_data.push(
			new Region(
				Region.EGYPT,
				[
					new Zone(
						Zone.SCORCHED_DESERT,
						[new Lair(
							Lair.THE_SUMMITS,
							[
								new LairBoss(
									LairBoss.EYE_OF_THE_SWARM,
									new LairBossFragmentSet(fragmentSet_sd01)
								),
								new LairBoss(
									LairBoss.LIVES_ON_SNAKES,
									new LairBossFragmentSet(fragmentSet_sd02)
								),
								new LairBoss(
									LairBoss.THE_IDOLATOR,
									new LairBossFragmentSet(fragmentSet_sd03)
								)
							]
						)]
					),
					new Zone(
						Zone.CITY_OF_THE_SUN_GOD,
						[new Lair(
							Lair.THE_BLIGHTED_KINGDOM,
							[
								new LairBoss(
									LairBoss.NYARLAT_ROYAL_EXECUTIONER,
									new LairBossFragmentSet(fragmentSet_cs01)
								),
								new LairBoss(
									LairBoss.HASSAN_THE_RUINER,
									new LairBossFragmentSet(fragmentSet_cs02)
								),
								new LairBoss(
									LairBoss.DUNEBACK,
									new LairBossFragmentSet(fragmentSet_cs03)
								)
							]
						)]
					)
				],
				new RegionalBoss(
					RegionalBoss.ASPECT_OF_THE_MANY_LIMBED,
					new RegionalBossFragmentSet(fragmentSet_egy)
				)
			)
		);
	}
	
	private static function initData_Transylvania()
	{
		var fragmentSet_bf01 = {};
		fragmentSet_bf01[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.OMEGA, 4);
		fragmentSet_bf01[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.OMICRON, 2);
		fragmentSet_bf01[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.DELTA, 6);
		fragmentSet_bf01[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.PI, 6);
		fragmentSet_bf01[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.THETA, 7);
		fragmentSet_bf01[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.MU, 8);
		fragmentSet_bf01[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.SIGMA, 8);
		fragmentSet_bf01[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.OMEGA, 6);
		fragmentSet_bf01[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.XI, 9);
		
		var fragmentSet_bf02 = {};
		fragmentSet_bf02[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.LAMBDA, 4);
		fragmentSet_bf02[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.XI, 7);
		fragmentSet_bf02[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.ALPHA, 4);
		fragmentSet_bf02[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.PSI, 1);
		fragmentSet_bf02[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.EPSILON, 2);
		fragmentSet_bf02[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.THETA, 2);
		fragmentSet_bf02[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.THETA, 1);
		fragmentSet_bf02[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.ETA, 3);
		fragmentSet_bf02[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.MU, 9);
		
		var fragmentSet_bf03 = {};
		fragmentSet_bf03[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.ALPHA, 2);
		fragmentSet_bf03[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.ZETA, 7);
		fragmentSet_bf03[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.GAMMA, 3);
		fragmentSet_bf03[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.EPSILON, 1);
		fragmentSet_bf03[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.NU, 9);
		fragmentSet_bf03[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.EPSILON, 7);
		fragmentSet_bf03[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.ETA, 7);
		fragmentSet_bf03[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.THETA, 5);
		fragmentSet_bf03[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.ALPHA, 7);
		
		var fragmentSet_sf01 = {};
		fragmentSet_sf01[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.ZETA, 2);
		fragmentSet_sf01[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.KAPPA, 2);
		fragmentSet_sf01[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.EPSILON, 4);
		fragmentSet_sf01[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.UPSILON, 8);
		fragmentSet_sf01[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.ETA, 4);
		fragmentSet_sf01[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.SIGMA, 1);
		fragmentSet_sf01[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.RHO, 8);
		fragmentSet_sf01[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.UPSILON, 5);
		fragmentSet_sf01[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.RHO, 2);
		
		var fragmentSet_sf02 = {};
		fragmentSet_sf02[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.MU, 3);
		fragmentSet_sf02[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.SIGMA, 3);
		fragmentSet_sf02[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.ETA, 9);
		fragmentSet_sf02[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.PHI, 8);
		fragmentSet_sf02[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.SIGMA, 5);
		fragmentSet_sf02[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.LAMBDA, 8);
		fragmentSet_sf02[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.BETA, 2);
		fragmentSet_sf02[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.DELTA, 9);
		fragmentSet_sf02[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.NU, 6);
		
		var fragmentSet_sf03 = {};
		fragmentSet_sf03[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.KAPPA, 1);
		fragmentSet_sf03[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.TAU, 1);
		fragmentSet_sf03[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.SIGMA, 9);
		fragmentSet_sf03[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.RHO, 9);
		fragmentSet_sf03[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.SIGMA, 4);
		fragmentSet_sf03[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.RHO, 5);
		fragmentSet_sf03[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.PHI, 1);
		fragmentSet_sf03[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.DELTA, 1);
		fragmentSet_sf03[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.BETA, 5);
		
		var fragmentSet_cf01 = {};
		fragmentSet_cf01[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.EPSILON, 8);
		fragmentSet_cf01[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.TAU, 3);
		fragmentSet_cf01[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.CHI, 8);
		fragmentSet_cf01[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.PI, 1);
		fragmentSet_cf01[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.TAU, 8);
		fragmentSet_cf01[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.OMICRON, 3);
		fragmentSet_cf01[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.BETA, 9);
		fragmentSet_cf01[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.BETA, 4);
		fragmentSet_cf01[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.DELTA, 8);
		
		var fragmentSet_cf02 = {};
		fragmentSet_cf02[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.GAMMA, 7);
		fragmentSet_cf02[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.ETA, 6);
		fragmentSet_cf02[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.PSI, 4);
		fragmentSet_cf02[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.PSI, 7);
		fragmentSet_cf02[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.MU, 2);
		fragmentSet_cf02[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.OMEGA, 3);
		fragmentSet_cf02[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.OMEGA, 8);
		fragmentSet_cf02[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.PI, 5);
		fragmentSet_cf02[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.OMEGA, 2);
		
		var fragmentSet_cf03 = {};
		fragmentSet_cf03[LairBossFragmentSetOrientation.NORTH_WEST] = new LairBossFragment(AlphabetGreek.ALPHA, 8);
		fragmentSet_cf03[LairBossFragmentSetOrientation.NORTH] = new LairBossFragment(AlphabetGreek.GAMMA, 8);
		fragmentSet_cf03[LairBossFragmentSetOrientation.NORTH_EAST] = new LairBossFragment(AlphabetGreek.KAPPA, 8);
		fragmentSet_cf03[LairBossFragmentSetOrientation.WEST] = new LairBossFragment(AlphabetGreek.EPSILON, 6);
		fragmentSet_cf03[LairBossFragmentSetOrientation.CENTER] = new LairBossFragment(AlphabetGreek.CHI, 9);
		fragmentSet_cf03[LairBossFragmentSetOrientation.EAST] = new LairBossFragment(AlphabetGreek.IOTA, 9);
		fragmentSet_cf03[LairBossFragmentSetOrientation.SOUTH_WEST] = new LairBossFragment(AlphabetGreek.XI, 2);
		fragmentSet_cf03[LairBossFragmentSetOrientation.SOUTH] = new LairBossFragment(AlphabetGreek.IOTA, 7);
		fragmentSet_cf03[LairBossFragmentSetOrientation.SOUTH_EAST] = new LairBossFragment(AlphabetGreek.MU, 7);
		
		var fragmentSet_tra = {};
		fragmentSet_tra[RegionalBossFragmentSetOrientation.NORTH_NORTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.HE, 2);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.NORTH_NORTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.ZAIN, 1);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.NORTH_NORTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.ALAPH, 4);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.NORTH_NORTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.NUN, 5);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.NORTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.ALAPH, 1);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.NORTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.RESH, 5);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.NORTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.HE, 8);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.NORTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.RESH, 2);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.SOUTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.YUDH, 4);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.SOUTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.GAMAL, 9);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.SOUTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.NUN, 8);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.SOUTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.SADHE, 3);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_WEST_WEST] = new RegionalBossFragment(AlphabetPhoenician.WAW, 3);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_WEST] = new RegionalBossFragment(AlphabetPhoenician.KAPH, 2);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_EAST] = new RegionalBossFragment(AlphabetPhoenician.DALATH, 4);
		fragmentSet_tra[RegionalBossFragmentSetOrientation.SOUTH_SOUTH_EAST_EAST] = new RegionalBossFragment(AlphabetPhoenician.QOPH, 4);
		
		m_data.push(
			new Region(
				Region.TRANSYLVANIA,
				[
					new Zone(
						Zone.BESIEGED_FARMLANDS,
						[new Lair(
							Lair.THE_DREAD_RETREAT,
							[
								new LairBoss(
									LairBoss.RED_REVERE,
									new LairBossFragmentSet(fragmentSet_bf01)
								),
								new LairBoss(
									LairBoss.THE_PLAGUE,
									new LairBossFragmentSet(fragmentSet_bf02)
								),
								new LairBoss(
									LairBoss.THE_SCYTHIAN,
									new LairBossFragmentSet(fragmentSet_bf03)
								)
							]
						)]
					),
					new Zone(
						Zone.SHADOWY_FOREST,
						[new Lair(
							Lair.THE_SPOILED_GARDENS,
							[
								new LairBoss(
									LairBoss.SHE_OF_WOE,
									new LairBossFragmentSet(fragmentSet_sf01)
								),
								new LairBoss(
									LairBoss.AVATAR_OF_THE_CREEP,
									new LairBossFragmentSet(fragmentSet_sf02)
								),
								new LairBoss(
									LairBoss.DACIAN_PUREBLOOD,
									new LairBossFragmentSet(fragmentSet_sf03)
								)
							]
						)]
					),
					new Zone(
						Zone.CARPATHIAN_FANGS,
						[new Lair(
							Lair.THE_MOTHERLAND,
							[
								new LairBoss(
									LairBoss.DEVOURER,
									new LairBossFragmentSet(fragmentSet_cf01)
								),
								new LairBoss(
									LairBoss.THE_VOIVODE,
									new LairBossFragmentSet(fragmentSet_cf02)
								),
								new LairBoss(
									LairBoss.VULKAN,
									new LairBossFragmentSet(fragmentSet_cf03)
								)
							]
						)]
					)
				],
				new RegionalBoss(
					RegionalBoss.ASPECT_OF_THE_GREAT_WINGED,
					new RegionalBossFragmentSet(fragmentSet_tra)
				)
			)
		);
	}

	public static function getRegions() : Array
	{
		if(!m_data_initialized) initData();
		return m_data;
	}

	public static function findFragment(fragmentCode:String) : Object
	{
		var res;
	
		res = findLairFragment(fragmentCode);
		if(res) return res;
	
		res = findRegionalFragment(fragmentCode);
		if(res) return res;
	
		return undefined;
	}

	public static function findLairFragmentByLocalizedName(fragmentCode:String) : Object
	{
		var compound = parseLocalizedFragmentCodeGreek(fragmentCode);
		if(!compound) return undefined;
		return findLairFragment(compound.letter, compound.number);
	}

	public static function findLairFragment(letter:String, number:Number) : Object
	{
		// Loop all Regions
		var regions = getRegions();
		for(var rIdx=0; rIdx<regions.length; rIdx++)
		{
			// Loop all Zones in Region
			var region = regions[rIdx];
			var zones = region.getZones();
			for(var zIdx=0; zIdx<zones.length; zIdx++)
			{
				// Loop all Lairs in Zone (usually just 1)
				var zone = zones[zIdx];
				var lairs = zone.getLairs();
				for(var lIdx=0; lIdx<lairs.length; lIdx++)
				{
					// Loop all Bosses in Lair
					var lair = lairs[lIdx];
					var bosses = lair.getBosses();
					for(var bIdx=0; bIdx<bosses.length; bIdx++)
					{
						// Loop Lair Fragment Set
						var boss = bosses[bIdx];
						var fragmentSet = boss.getFragmentSet();
						for(var oIdx=0; oIdx<LairBossFragmentSetOrientation.m_orientations.length; oIdx++)
						{
							var orientation = LairBossFragmentSetOrientation.m_orientations[oIdx];
							var fragment = fragmentSet.getFragmentAtOrientation(orientation);
							if(fragment.getLetter() == letter && fragment.getNumber() == number)
							{
								var compound = {
									region: region,
									zone: zone,
									lair: lair,
									boss: boss,
									orientation: orientation
								};
							
								return compound;
							}
						}
					}
				}
			}
		}
		
		return undefined;
	}

	public static function findRegionalFragmentByLocalizedName(fragmentCode:String) : Object
	{
		var compound = parseLocalizedFragmentCodePhoenician(fragmentCode);
		if(!compound) return undefined;
		return findRegionalFragment(compound.letter, compound.number);
	}

	public static function findRegionalFragment(letter:String, number:Number) : Object
	{
		// Loop all Regions
		var regions = getRegions();
		for(var rIdx=0; rIdx<regions.length; rIdx++)
		{
			// Loop all Regional Fragment Set
			var region = regions[rIdx];
			var regionalBoss = region.getRegionalBoss();
			var fragmentSet = regionalBoss.getFragmentSet();
			for(var oIdx=0; oIdx<RegionalBossFragmentSetOrientation.m_orientations.length; oIdx++)
			{
				var orientation = RegionalBossFragmentSetOrientation.m_orientations[oIdx];
				var fragment = fragmentSet.getFragmentAtOrientation(orientation);
				if(fragment.getLetter() == letter && fragment.getNumber() == number)
				{
					var compound = {
						region: region,
						boss: regionalBoss,
						orientation: orientation
					};
				
					return compound;
				}
			}
		}
	
		return undefined;
	}

	public static function parseLocalizedFragmentCode(fragmentCode:String)
	{
		var parts = fragmentCode.split(" ");
	
		var letterCode = AlphabetGreek.getCodeFromName(parts[0]) || AlphabetPhoenician.getCodeFromName(parts[0]);
		if(!letterCode) return undefined;
	
		var compound = {
			letter: letterCode,
			number: Number(parts[1])
		};
	
		return compound;
	}

	public static function parseLocalizedFragmentCodeGreek(fragmentCode:String)
	{
		var parts = fragmentCode.split(" ");
	
		var letterCode = AlphabetGreek.getCodeFromName(parts[0]);
		if(!letterCode) return undefined;
	
		var compound = {
			letter: letterCode,
			number: Number(parts[1])
		};
	
		return compound;
	}

	public static function parseLocalizedFragmentCodePhoenician(fragmentCode:String)
	{
		var parts = fragmentCode.split(" ");
	
		var letterCode = AlphabetPhoenician.getCodeFromName(parts[0]);
		if(!letterCode) return undefined;
	
		var compound = {
			letter: letterCode,
			number: Number(parts[1])
		};
	
		return compound;
	}
}