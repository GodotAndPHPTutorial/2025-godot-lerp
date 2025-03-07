extends CharacterBody2D

var speed : float = 300
var lerp_value = 10

func _physics_process(delta: float) -> void:
	var direction = (get_global_mouse_position() - global_position).normalized()
	
	if position.distance_to(get_global_mouse_position()) > 5:
		velocity = lerp(velocity, direction * speed, lerp_value * delta)
	else:
		velocity = lerp(velocity, Vector2.ZERO, lerp_value * delta)
		
	move_and_slide()
	pass
