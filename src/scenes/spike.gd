extends Area2D

@onready var collision_shape_2d = $Area2D/CollisionShape2D
@onready var spike_timer = $spikeTimer
@onready var timer = $Timer
@onready var animated_sprite_2d = $AnimatedSprite2D

var isSpikeOpen: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	changeSpike()


func changeSpike():
	if not isSpikeOpen:
		animated_sprite_2d.animation = "active"
		collision_shape_2d.disabled = false
		timer.start()
		isSpikeOpen = true
	else:
		animated_sprite_2d.animation = "innactive"
		collision_shape_2d.disabled = true
		timer.start()
		isSpikeOpen = false


func _on_area_2d_body_entered(body):
		if body.is_in_group("Player"):
			get_tree().reload_current_scene() #change for dead animation
