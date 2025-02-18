extends Area2D

@export var sprite : Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("Player entered")
	if body is Player:
		sprite.visible = true


func _on_body_exited(body: Node2D) -> void:
	if body is Player:
		sprite.visible = false;
