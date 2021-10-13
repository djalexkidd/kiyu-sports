extends Control

func _ready():
	refresh_char()

func _on_NextCharButton_pressed():
	Global.character += 1
	refresh_char()

func _on_PreviousCharButton_pressed():
	Global.character -= 1
	refresh_char()

func refresh_char():
	$AnimatedSprite.play(str(Global.character))
	if Global.character > 2:
		Global.character -= 1
	elif Global.character < 1:
		Global.character += 1
	
	if Global.character == 2:
		$AnimatedSprite.scale.x = 1.5
		$AnimatedSprite.scale.y = 1.5
	else:
		$AnimatedSprite.scale.x = 4
		$AnimatedSprite.scale.y = 4

func _on_BackButton_pressed():
	get_tree().change_scene("res://scenes/menu/NameEntry.tscn")
