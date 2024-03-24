extends Node

func _on_finish_body_entered(body):
	print("hello")
		# chceck if the player has entered
	if body.is_in_group("Player"):
		call_deferred("switch_to_new_scene")

# Function to switch to a new scene
func switch_to_new_scene():
	# Change the scene
	get_tree().change_scene_to_file("res://scenes/adultMaze.tscn")
