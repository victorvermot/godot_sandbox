extends Area2D

@onready var animation_player: AnimationPlayer = %AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		animation_player.play("coin_pick_up_anim")
