extends Node

func _input(event):
	# Check if the spacebar is pressed
	if event.is_action_pressed("ui_accept"):
		# Load the new scene
		get_tree().change_scene_to_file("res://scenes/kidMaze.tscn")
