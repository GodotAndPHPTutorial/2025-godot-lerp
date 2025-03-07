extends CharacterBody2D

var start_rotation = 0
var end_rotation = PI
var rotation_lerp = 0.1

func _physics_process(delta: float) -> void:
	rotation = end_rotation
	pass
