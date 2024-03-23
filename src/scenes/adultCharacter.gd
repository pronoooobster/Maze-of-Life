extends CharacterBody2D

var speed = 150  # speed in pixels/sec
@onready var animated_sprite_2d = $AnimatedSprite2D

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	#Animations
	if direction == Vector2.LEFT:
		animated_sprite_2d.animation = "walking_W"
	elif direction == Vector2.RIGHT:
		animated_sprite_2d.animation = "walking_E"	
	elif direction == Vector2.UP:
		animated_sprite_2d.animation = "walking_N"
	elif direction == Vector2.DOWN:
		animated_sprite_2d.animation = "walking_S"
	elif direction == Vector2(-1, -1):  # Diagonal left-up
		print("Moving diagonal left-up")
	elif direction == Vector2(1, -1):  # Diagonal right-up
		print("Moving diagonal right-up")
	elif direction == Vector2(-1, 1):  # Diagonal left-down
		print("Moving diagonal left-down")
	elif direction == Vector2(1, 1):  # Diagonal right-down
		print("Moving diagonal right-down")

	move_and_slide()
