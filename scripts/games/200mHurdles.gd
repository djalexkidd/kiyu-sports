extends Node2D

var player_character_path = Global.char_select()
var camera_path = "res://scenes/cameras/Camera2D.tscn"

func _ready():
	var player_character = load(player_character_path).instance()
	var camera = load(camera_path).instance()
	player_character.position = Vector2(225, 608)
	add_child(player_character)
	$Kiyu.add_child(camera)
	$Kiyu.allow_jump = true

func _on_Timer_timeout():
	$HUD/Speed.text = "%0.f" % $Kiyu.velocity.x

func _on_Stopwatch_results():
	get_tree().change_scene("res://scenes/menu/Results.tscn")
