extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

@onready var points_label = %Label
var points = 0
func add_point():
	points += 1
	points_label.text= "Points: " + str(points)
