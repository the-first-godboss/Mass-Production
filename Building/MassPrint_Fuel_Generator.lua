UndefineClass('MassPrint_Fuel_Generator')
DefineClass.MassPrint_Fuel_Generator = {
	__parents = { "Building", "MalfunctionOverTimeComponent", "PowerComponent", "ProductionDeviceComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockState = "hidden",
	unload_anim_hands = "standing_DropDown_Hands_High",
	load_anim_hands = "standing_PickUp_Hands_High",
	BuildMenuCategory = "Devices",
	display_name = T(469920246366, --[[ModItemBuildingCompositeDef MassPrint_Fuel_Generator display_name]] "Electrical fuel generator"),
	description = T(418964802110, --[[ModItemBuildingCompositeDef MassPrint_Fuel_Generator description]] "Used for automated cold extraction of oils from organic soft resources and conversion to fuel.\n\nProcesses <color TextEmphasis>Grain</color> <image 'UI/Icons/Resources/res_grains' 1100> OR <color TextEmphasis>Chew Roots</color> <image 'UI/Icons/Resources/res_potatoes' 1100> OR <color TextEmphasis>Palm Meat</color> <image 'UI/Icons/Resources/res_palmfruits' 1100> into <color TextEmphasis>Liquid fuel</color> <image 'UI/Icons/Resources/res_oil' 1100>."),
	menu_display_name = T(508175408259, --[[ModItemBuildingCompositeDef MassPrint_Fuel_Generator menu_display_name]] "Fuel Generator"),
	BuildMenuIcon = "UI/Icons/Build Menu/oil_press_metal",
	BuildMenuPos = 2,
	display_name_pl = T(999627043325, --[[ModItemBuildingCompositeDef MassPrint_Fuel_Generator display_name_pl]] "Electrical fuel generator"),
	display_name_short = T(972333321609, --[[ModItemBuildingCompositeDef MassPrint_Fuel_Generator display_name_short]] "Fuel generator"),
	entity = "OilPress_Metal",
	labels = {
		"BerserkTargets",
		"CPUCoreDevice",
		"SolarFlareShieldedTargets",
	},
	update_interval = 5000,
	FinalColor = 4293725453,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		Metal = 10000,
		ScrapElectronics = 5000,
	}),
	construction_points = 15000,
	repair_cost = PlaceObj('ConstructionCost', {
		Metal = 4000,
		ScrapElectronics = 1000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		CPUCore = 1000,
		ScrapElectronics = 2000,
		ScrapMetal = 10000,
	}),
	Health = 280000,
	MaxHealth = 280000,
	lock_block_box = box(-600, -600, 0, 600, 600, 2100),
	SkirtSize = 306,
	EntityHeight = 2467,
	CustomMaterial = "Metal",
	attack_attraction = 5,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	MalfunctionOverTimeComponent = true,
	PowerComponent = true,
	ProductionDeviceComponent = true,
	MinTimeToMalfunction = 48000000,
	MaxTimeToMalfunction = 86400000,
	IsPowerConsumer = true,
	PowerConsumption = 10000,
	HasSmartConnection = true,
	interfaces = {
		"MassPrint_FuelGenerator_DeviceInterface",
	},
	ProductionDeviceSkipsStateChange = true,
	res_consumed = "Silicon",
	res_stored = 20000,
	res_operate_time = 5760000,
}

