extends StaticBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $Area2D/CollisionShape2D

var record_bus_index: int
var loudnessThreshold := -50
var sample

# Called when the node enters the scene tree for the first time.
func _ready():
	record_bus_index = AudioServer.get_bus_index('Record')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sample = AudioServer.get_bus_peak_volume_left_db(record_bus_index, 0)
	print(sample)
	print(record_bus_index)
		
	if sample > loudnessThreshold:
		activate()
	else:
		deactivate()
	
func activate():
	animated_sprite_2d.animation = "active"
	collision_shape_2d.disabled = false
	
func deactivate():
	animated_sprite_2d.animation = "default"
	collision_shape_2d.disabled = true




func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
			get_tree().change_scene_to_file("res://scenes/death.tscn") #change for dead animation
