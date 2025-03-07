extends Button

@export var type: EnumManager.BUILDING_TYPE

func _on_pressed() -> void:
	SignalManager.on_building_built.emit(type)
