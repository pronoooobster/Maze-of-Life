extends Node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _ready():
	#$Label.percentage_visible = 0
	$Area2D.body_entered.connect(_play_animation)  
	#$Area2D.connect('body_entered', self, '_play_animation')


func _play_animation(body):
	print('show text')
	#$Area2D.body_entered.Disconnect(_play_animation)  
	#$Area2D.disconnect('body_entered', self, '_play_animation')
	$AnimationPlayer.play('new_animation')
	
