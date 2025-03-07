extends Node

@export var building_list: Array[Building]
var building_dict: Dictionary[EnumManager.BUILDING_TYPE, PackedScene]
var scene_to_replace: Node

func _ready() -> void:
	SignalManager.on_building_built.connect(on_build)
	SignalManager.on_build_ui_opened.connect(on_build_ui_open)
	for building in building_list:
		building_dict[building.type] = load(building.scene.resource_path)

func on_build_ui_open(scene_chosen: Node):
	scene_to_replace = scene_chosen

func on_build(type: EnumManager.BUILDING_TYPE) -> void:
	if not scene_to_replace:
		return
	var obj = building_dict[type].instantiate()
	var sprite_transform = scene_to_replace.get_child(0).transform
	scene_to_replace.get_child(0).queue_free()
	scene_to_replace.add_child(obj)

	scene_to_replace = null
