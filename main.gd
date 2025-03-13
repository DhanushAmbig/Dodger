extends Node2D

@onready var spawn_positions = get_viewport_rect().size.x

func _on_timer_timeout():
	var obj = preload("res://falling_object.tscn").instantiate()
	# Ensure spawn_positions is an integer before using %
	var spawn_x = randi() % int(spawn_positions)  

	obj.position = Vector2(spawn_x, 0)  
	add_child(obj)

var score = 0

func update_score():
	score += 1
	$scorelabel.text = "Score: " + str(score)
