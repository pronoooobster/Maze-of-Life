extends CharacterBody2D

var speed = 150  # speed in pixels/sec
@onready var sprite_2d = $Sprite2D

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	
	#Animations
	if direction == Vector2.LEFT:
		sprite_2d.animation = "walking_W"
	elif direction == Vector2.RIGHT:
		sprite_2d.animation = "walking_E"	
	elif direction == Vector2.UP:
		sprite_2d.animation = "walking_N"
	elif direction == Vector2.DOWN:
		sprite_2d.animation = "walking_S"
	elif direction == Vector2.LEFT + Vector2.UP:  # Diagonal left-up
		sprite_2d.animation = "walking_W"
	elif direction == Vector2.RIGHT + Vector2.UP:  # Diagonal right-up
		sprite_2d.animation = "walking_E"
	elif direction == Vector2.LEFT + Vector2.DOWN:  # Diagonal left-down
		sprite_2d.animation = "walking_S"
	elif direction == Vector2.RIGHT + Vector2.DOWN:  # Diagonal right-down
		sprite_2d.animation = "walking_S"

	move_and_slide()
