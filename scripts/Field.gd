extends Node2D

func _on_Timer_timeout():
	$HUD/Speed.text = "%0.f" % $Kiyu.velocity.x

func _on_Stopwatch_results():
	get_tree().change_scene("res://scenes/Results.tscn")
