extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	points_label.text= "Points: " + str(global.points) # Replace with function body.

@onready var points_label = %LabelTeen


func add_point():
	global.points += 1
	points_label.text= "Points: " + str(global.points)
