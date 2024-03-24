extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

@onready var points_label = %Label

@export var points = 0

func add_point():
	global.points += 1
	points_label.text= "Points: " + str(global.points)
#
#func set_points(points):
	#_points = points
	#emit_signal("points_changed", _points)
