UndefineClass('MassPrint_Graphene_Solar_Panel_Smart')
DefineClass.MassPrint_Graphene_Solar_Panel_Smart = {
	__parents = { "SolarPanelAutomated", "MalfunctionOverTimeComponent", "PowerComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "SolarPanelAutomated",
	LockState = "hidden",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "MassPrint_Solar_Panel_Graphene",
		}),
	},
	BuildMenuCategory = "MassPrint_ImprovedPowerMenu",
	display_name = T(139739332986, --[[ModItemBuildingCompositeDef MassPrint_Graphene_Solar_Panel_Smart display_name]] "Smart Graphene Solar Panel"),
	description = T(533339943003, --[[ModItemBuildingCompositeDef MassPrint_Graphene_Solar_Panel_Smart description]] "Adding a built-in dual-core CPU, the best AI algorithms and the new graphene solar cells gives the best possible Power Production & Durability.\n\nGenerates <color TextEmphasis>300</color><image 'UI/Icons/Resources/res_electricity' 1100> during the day."),
	menu_display_name = T(350158985223, --[[ModItemBuildingCompositeDef MassPrint_Graphene_Solar_Panel_Smart menu_display_name]] "Smart Graphene Solar Panel"),
	BuildMenuIcon = "UI/Icons/Build Menu/graphene_solar_panel",
	BuildMenuPos = 3,
	display_name_pl = T(855336835554, --[[ModItemBuildingCompositeDef MassPrint_Graphene_Solar_Panel_Smart display_name_pl]] "Smart Graphene solar panels"),
	display_name_short = T(945862950721, --[[ModItemBuildingCompositeDef MassPrint_Graphene_Solar_Panel_Smart display_name_short]] "Smart Graphene panel"),
	entity = "GraphenSolarPanel",
	labels = {
		"PowerSources",
		"ToxicAirPowerProductionAffected",
		"SolarFlarePowerProductionAffected",
		"DustStormPowerProductionAffected",
		"BerserkTargets",
		"CPUCoreDevice",
		"SolarFlareShieldedTargets",
	},
	FinalColor = 4291884820,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 2000,
		CarbonNanotubes = 100000,
		ScrapElectronics = 10000,
	}),
	construction_points = 40000,
	repair_cost = PlaceObj('ConstructionCost', {
		CarbonNanotubes = 5000,
		ScrapElectronics = 1000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CPUCore = 2000,
		CarbonNanotubes = 50000,
		ScrapElectronics = 5000,
	}),
	Health = 400000,
	MaxHealth = 400000,
	upgrade_label = "SolarPanel",
	RoomPlacement = "outdoors",
	CanPlaceInShelter = false,
	lock_block_box = box(-600, -1800, 0, 1800, 600, 2100),
	attack_attraction = 20,
	affected_by_disasters = set( "DustStorm", "SolarEclipse", "Thunderstorm" ),
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	MinTimeToMalfunction = 57600000,
	MaxTimeToMalfunction = 115200000,
	IsPowerGenerator = true,
	Production = 300000,
	PowerProductionStopsAtNight = true,
}

