extends Button


func _on_pressed() -> void:
	SignalManager.on_button_pressed.emit()
