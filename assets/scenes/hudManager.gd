extends Control


func _ready() -> void:
	SignalManager.on_button_pressed.connect(_on_button_pressed)

func _on_button_pressed() -> void:
	print("Baggel")
