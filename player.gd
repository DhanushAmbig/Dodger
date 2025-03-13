extends CharacterBody2D
@export var speed = 300  # Adjust speed

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("right"):
		direction = 1
	elif Input.is_action_pressed("left"):
		direction = -1

	velocity.x = direction * speed
	move_and_slide()
