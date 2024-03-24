extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
@onready var gameManager = %NewGame

func _on_body_entered(body):
	queue_free()
	gameManager.add_point()
	#if body.name == "TeenCharacter":
			
	

