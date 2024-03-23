extends StaticBody2D

var record_bus_index: int
var loudnessThreshold := -20
var microphone := AudioStreamPlayer.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	# Set the microphone to capture audio input
	record_bus_index = AudioServer.get_bus_index('Record')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var sample = AudioServer.get_bus_peak_volume_left_db(record_bus_index, 0)
	print(sample)
	if sample > loudnessThreshold:
		print("open")
	
func openDoor():
	

func _on_area_2d_body_entered(body):
	pass # Replace with function body.
