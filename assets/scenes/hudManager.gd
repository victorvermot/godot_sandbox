extends Control

func _on_close_button_pressed() -> void:
	hide()

func _ready() -> void:
	SignalManager.on_build_ui_opened.connect(on_build_ui_opened)

func on_build_ui_opened(scene: Node):
	visible = not visible
