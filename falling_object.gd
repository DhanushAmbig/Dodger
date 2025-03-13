extends Area2D

@export var fall_speed = 200  # Adjust speed

func _process(delta):
	position.y += fall_speed * delta  # Move downward
	if position.y > 600:  # Delete if out of screen
		queue_free()

func _on_body_entered(body):
	if body.name == "player":
		print("Collision detected with Player")  # Debugging
		get_parent().update_score()
		queue_free()
