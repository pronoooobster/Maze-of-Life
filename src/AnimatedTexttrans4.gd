extends Node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _ready():
	$AnimationPlayer.play('new_animation')


func _on_animation_player_animation_finished(anim_name):
	#load the kid scene
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
