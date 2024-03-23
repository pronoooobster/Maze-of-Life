extends Area2D
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var collision_shape_2d = $CollisionShape2D
@onready var spike_timer = $spikeTimer
@onready var timer = $Timer

var isSpikeOpen: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_timer_timeout():
	print("time")
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



	
