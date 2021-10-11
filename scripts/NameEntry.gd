extends Control

func _on_NextCharButton_pressed():
	Global.character = 2
	$AnimatedSprite.play("roblox")
	$AnimatedSprite.scale.x = 1.5
	$AnimatedSprite.scale.y = 1.5

func _on_PreviousCharButton_pressed():
	Global.character = 1
	$AnimatedSprite.play("default")
	$AnimatedSprite.scale.x = 4
	$AnimatedSprite.scale.y = 4
