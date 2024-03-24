extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_finish_body_entered(body):
		# chceck if the player has entered
	if body.is_in_group("Player"):
		call_deferred("switch_to_new_scene")

# Function to switch to a new scene
func switch_to_new_scene():
	# Change the scene
	get_tree().change_scene_to_file("res://scenes/deathsc.tscn")
