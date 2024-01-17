UndefineClass('MassPrint_Composter_Wood')
DefineClass.MassPrint_Composter_Wood = {
	__parents = { "Building", "ProductionDeviceComponent", "ResConsumerDeviceComponent", "ResourceDismantlingComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockState = "hidden",
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	TreatStorageAsDevice = true,
	ClosedStorage = true,
	BuildMenuCategory = "Animals",
	display_name = T(859651273226, --[[ModItemBuildingCompositeDef MassPrint_Composter_Wood display_name]] "Wood Composter"),
	description = T(844128407753, --[[ModItemBuildingCompositeDef MassPrint_Composter_Wood description]] "Composts food into manure"),
	menu_display_name = T(608736110750, --[[ModItemBuildingCompositeDef MassPrint_Composter_Wood menu_display_name]] "Wood Composter"),
	BuildMenuIcon = "UI/Icons/Build Menu/storage_chest_wood",
	BuildMenuPos = 2,
	display_name_pl = T(577685067699, --[[ModItemBuildingCompositeDef MassPrint_Composter_Wood display_name_pl]] "Composters"),
	display_name_short = T(175325912432, --[[ModItemBuildingCompositeDef MassPrint_Composter_Wood display_name_short]] "Composter"),
	entity = "Chest_01",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	FinalColor = 4293522544,
	construction_cost = PlaceObj('ConstructionCost', {
		Wood = 10000,
	}),
	construction_points = 4000,
	repair_cost = PlaceObj('ConstructionCost', {
		Wood = 2000,
	}),
	deconstruction_output = PlaceObj('ConstructionCost', {
		Wood = 5000,
	}),
	Health = 180000,
	MaxHealth = 180000,
	upgrade_label = "Composters",
	lock_block_box = box(-300, -300, 0, 300, 300, 700),
	SkirtSize = 0,
	EntityHeight = 610,
	CustomMaterial = "Wood",
	attack_attraction = 40,
	AttackAttractionGetter = function (self)
		if not self.res_amounts:IsEmpty() then
			return self.attack_attraction * 3
		else
			return self.attack_attraction
		end
	end,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	ProductionDeviceComponent = true,
	ResConsumerDeviceComponent = true,
	ResourceDismantlingComponent = true,
	PowerConsumption = 10000,
	interfaces = {
		"MassPrint_Composter_DeviceInterface",
	},
	initial_recipe = "MassPrint_Compost_100",
	off_when_idle = true,
	ProductionDeviceSkipsStateChange = true,
	res_consumed = "LiquidFuel",
	res_stored = 10000,
	res_operate_time = 6720000,
	TransformMetaProp = "composting",
	TransformDisplayName = T(119728888642, --[[ModItemBuildingCompositeDef MassPrint_Composter_Wood TransformDisplayName]] "Composting"),
	stack_count = 48,
	accepted_res = {
		"FoodRaw",
		"FoodProcessed",
	},
	distribute_allowed_res = false,
}

