extends StaticBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D



var record_bus_index: int
var loudnessThreshold := -20
var sample
var is_in_zone: bool = false
var isOpen: bool = false
# Called when the node enters the scene tree for the first time.
	# Set the microphone to capture audio input
func _ready():
	pass
	
func _process(float) -> void:
	var sample
	
	if is_in_zone and get_node("/root/Node").sample > loudnessThreshold:
		unlock()
		isOpen = true
	
func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		is_in_zone = true

func _on_area_2d_body_exited(body):
	if body.is_in_group("Player"):
		is_in_zone = false


func unlock():
	if isOpen == false and get_node("/root/Node").sample > loudnessThreshold:
		animated_sprite_2d.animation = "doorUnlocking"
		await animated_sprite_2d.animation_finished
		animated_sprite_2d.animation = "doorOpen"
		get_node("CollisionShape2D").disabled = true
		
		
