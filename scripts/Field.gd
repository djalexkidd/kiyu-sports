extends Node2D

func _on_Timer_timeout():
	$Speed.text = "%0.f" % $Kiyu.velocity.x
