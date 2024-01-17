UndefineClass('MassPrint_StoragePit_2')
DefineClass.MassPrint_StoragePit_2 = {
	__parents = { "Building", "ResourceDismantlingComponent", "StorageDepotComponent" },
	__generated_by_class = "ModItemBuildingCompositeDef",


	object_class = "Building",
	LockPrerequisites = {
		PlaceObj('CheckTech', {
			Tech = "MassPrint_Storage_Stage_2",
		}),
	},
	unload_anim_hands = "standing_DropDown_Hands",
	load_anim_hands = "standing_PickUp_Hands",
	StorageTargetTemperature = 2000,
	TempChangeRateOn = 750,
	TempChangeRateOff = 750,
	ClosedStorage = true,
	BuildMenuCategory = "MassPrint_StoragePitMenu",
	display_name = T(249784904414, --[[ModItemBuildingCompositeDef MassPrint_StoragePit_2 display_name]] "Expanded Underground Storage"),
	description = T(315466737474, --[[ModItemBuildingCompositeDef MassPrint_StoragePit_2 description]] "Provides expanded storage space for resources by digging an underground wooden shaft and encloses its contents by building a wooden cover.\n\n<style TechSubtitleBlue>Lowers temperature to a max of:</style> <color TextEmphasis>2º</color> "),
	menu_display_name = T(796499023669, --[[ModItemBuildingCompositeDef MassPrint_StoragePit_2 menu_display_name]] "Expanded Storage"),
	BuildMenuIcon = "UI/Icons/Build Menu/storage_chest_wood",
	BuildMenuPos = 2,
	display_name_pl = T(858283399252, --[[ModItemBuildingCompositeDef MassPrint_StoragePit_2 display_name_pl]] "Wooden Expanded Underground Storage"),
	display_name_short = T(892758321292, --[[ModItemBuildingCompositeDef MassPrint_StoragePit_2 display_name_short]] "Expanded Underground Storage"),
	entity = "Chest_01",
	labels = {
		"BerserkTargets",
	},
	update_interval = 20000,
	FinalColor = 4279641327,
	construction_cost = PlaceObj('ConstructionCost', {
		Wood = 75000,
	}),
	construction_points = 90000,
	repair_cost = PlaceObj('ConstructionCost', {
		Wood = 8000,
	}),
	repair_points = 1000000,
	Health = 120000,
	MaxHealth = 120000,
	upgrade_label = "StoragePile",
	RoomPlacement = "outdoors",
	lock_block_box = box(-300, -300, 0, 300, 300, 700),
	SkirtSize = 0,
	EntityHeight = 586,
	CustomMaterial = "Wood",
	attack_attraction = 40,
	AttackAttractionGetter = function (self)
		if not self.res_amounts:IsEmpty() then
			return self.attack_attraction * 3
		else
			return self.attack_attraction
		end
	end,
	prefer_in_buildmenu = true,
	enable_overlay_on_placement = {
		RoomsOverlay = true,
	},
	ResourceDismantlingComponent = true,
	StorageDepotComponent = true,
	stack_count = 240,
	accepted_res = {
		"ConstructionResources",
		"FoodRaw",
		"FoodProcessed",
		"FabricsAllPlusRaw",
		"ElectronicComponents",
		"CraftingResourcesBulk",
		"Apparel",
		"Weapons",
		"Tools",
		"Medicine",
		"Other",
	},
}

