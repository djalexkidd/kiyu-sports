extends Node2D

func _physics_process(delta):
	$HUD/Score.text = str(Global.player_score)
