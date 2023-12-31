UndefineClass('MassPrint_Upgraded_Small_Drying_Rack')
DefineClass.MassPrint_Upgraded_Small_Drying_Rack = {
	__parents = { "Building", "PowerComponent", "ResourceTransformComponent", "StorageDepotComponent", "VisualStorageComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockState = "hidden",
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	TreatStorageAsDevice = true,
	ClosedStorage = true,
	BuildMenuCategory = "sub_DryingRacksSmall",
	display_name = T(204972021556, --[[ModItemBuildingCompositeDef MassPrint_Upgraded_Small_Drying_Rack display_name]] "Upgraded drying rack"),
	description = T(762288634458, --[[ModItemBuildingCompositeDef MassPrint_Upgraded_Small_Drying_Rack description]] "Dries raw resources over time.\n\nTransforms <color TextEmphasis>Raw red meat</color><image 'UI/Icons/Resources/res_raw_meatt' 1100> into <color TextEmphasis>Dried meat</color><image 'UI/Icons/Resources/res_dry_meat' 1100>, and <color TextEmphasis>Hides</color><image 'UI/Icons/Resources/res_raw_leather' 1100> into <color TextEmphasis>Leather</color><image 'UI/Icons/Resources/res_dry_leather' 1100>, and <color TextEmphasis>Skinbark</color><image 'UI/Icons/Resources/res_payah_bark' 1100> into <color TextEmphasis>Veggie Leather</color><image 'UI/Icons/Resources/res_veggie_leather' 1100>."),
	menu_display_name = T(816016678140, --[[ModItemBuildingCompositeDef MassPrint_Upgraded_Small_Drying_Rack menu_display_name]] "Scrap metal"),
	BuildMenuIcon = "UI/Icons/Build Menu/small_drying_rack_scrap",
	BuildMenuPos = 8,
	display_name_pl = T(886920316939, --[[ModItemBuildingCompositeDef MassPrint_Upgraded_Small_Drying_Rack display_name_pl]] "Upgraded drying racks"),
	display_name_short = T(515811710963, --[[ModItemBuildingCompositeDef MassPrint_Upgraded_Small_Drying_Rack display_name_short]] "Small upgraded drying rack"),
	entity = "Skin_Rag_03",
	labels = {
		"BerserkTargets",
	},
	update_interval = 5000,
	ConstructHasResourcesColor = 4287364864,
	FinalColor = 4279504122,
	can_turn_off = true,
	construction_cost = PlaceObj('ConstructionCost', {
		Metal = 10000,
		ScrapElectronics = 1000,
	}),
	construction_points = 5000,
	upgrade_label = "DryingRackSmall",
	lock_block_box = box(-300, -1800, 0, 300, 600, 1400),
	CustomMaterial = "Metal-Construction",
	attack_attraction = 40,
	AttackAttractionGetter = function (self)
		if not self.res_amounts:IsEmpty() then
			return self.attack_attraction * 3
		else
			return self.attack_attraction
		end
	end,
	PowerComponent = true,
	ResourceTransformComponent = true,
	StorageDepotComponent = true,
	VisualStorageComponent = true,
	IsPowerConsumer = true,
	PowerConsumption = 5000,
	HasSmartConnection = true,
	TransformMetaProp = "drying_progress",
	TransformDisplayName = T(418197688073, --[[ModItemBuildingCompositeDef MassPrint_Upgraded_Small_Drying_Rack TransformDisplayName]] "Drying"),
	TransformDefinitions = {
		PlaceObj('ResTransform', {
			'InputResource', "RawMeat",
			'OutputResource', "DryMeat",
			'TransformTime', 960000,
		}),
		PlaceObj('ResTransform', {
			'InputResource', "LeatherRaw",
			'OutputResource', "LeatherDry",
			'TransformTime', 960000,
		}),
		PlaceObj('ResTransform', {
			'InputResource', "SmokeleafRaw",
			'OutputResource', "SmokeleafDry",
			'TransformTime', 1920000,
		}),
		PlaceObj('ResTransform', {
			'InputResource', "PayahBark",
			'OutputResource', "VeggieLeather",
			'TransformTime', 960000,
		}),
	},
	stack_count = 2,
	accepted_res = {
		"RawMeat",
		"LeatherRaw",
		"SmokeleafRaw",
		"PayahBark",
	},
	show_grouped_stacks = false,
	distribute_allowed_res = false,
	can_disable_supply = true,
	res_entity_for_stack = true,
}

