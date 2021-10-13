extends Control

func _ready():
	$Temps/Value.text = "%0.2f" % Global.score

func _on_NextButton_pressed():
	get_tree().change_scene("res://scenes/games/NameEntry.tscn")
