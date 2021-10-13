extends Node2D

var player_character_path = Global.char_select()

func _ready():
	var player_character = load(player_character_path).instance()
	player_character.position = Vector2(225, 608)
	add_child(player_character)

func _on_Timer_timeout():
	$HUD/Speed.text = "%0.f" % $Kiyu.velocity.x

func _on_Stopwatch_results():
	get_tree().change_scene("res://scenes/menu/Results.tscn")
