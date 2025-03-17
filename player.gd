extends CharacterBody2D
@export var speed = 500  # Adjust speed

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("right"):
		direction = 1
	elif Input.is_action_pressed("left"):
		direction = -1

	position.x += direction * speed * delta
	
	# Set boundary
	var screen_width = get_viewport_rect().size.x
	position.x = clamp(position.x, 0, screen_width)

	
