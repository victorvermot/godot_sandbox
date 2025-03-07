extends Node2D

func hide_coin() -> void:
	print("Hiding coin")
	hide()

func destroy_coin() -> void:
	print("Destroying coin")
	queue_free()
