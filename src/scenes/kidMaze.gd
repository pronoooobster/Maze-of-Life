extends Node

var record_bus_index: int
var loudnessThreshold := -50
var sample
var open := false

# Called when the node enters the scene tree for the first time.
func _ready():
	record_bus_index = AudioServer.get_bus_index('Record')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sample = AudioServer.get_bus_peak_volume_left_db(record_bus_index, 0)
	print(sample)
	print(record_bus_index)
		
	#if sample > loudnessThreshold:
		#open = true
	#else:
		#open = false


func _on_endgame_collider_body_entered(body):
	# chceck if the player has entered
	if body.is_in_group("Player"):
		call_deferred("switch_to_new_scene")

# Function to switch to a new scene
func switch_to_new_scene():
	# Change the scene
	get_tree().change_scene_to_file("res://scenes/kidToTeen.tscn")
