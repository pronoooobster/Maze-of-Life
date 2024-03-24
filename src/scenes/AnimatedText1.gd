extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	#$Label.percentage_visible = 0
	$Area2D.body_entered.connect(_play_animation)  
	#$Area2D.connect('body_entered', self, '_play_animation')


func _play_animation(body):
	print('show text')
	#$Area2D.body_entered.Disconnect(_play_animation)  
	#$Area2D.disconnect('body_entered', self, '_play_animation')
	if body.is_in_group("Player"):
		$AnimationPlayer.play('new_animation')
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
