extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@onready var points_label = %LabelTeen

var points = 0

func add_point():
	points += 1
	points_label.text= "Points: " + str(points)
