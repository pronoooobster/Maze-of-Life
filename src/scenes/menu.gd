extends Control

func _on_start_button_button_down():
	#switch the scene to kid
	get_tree().change_scene_to_file("res://scenes/kidMaze.tscn")


func _on_quit_button_button_down():
	get_tree().quit()


func _on_credits_button_button_down():
	#switch the scene to credits
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
