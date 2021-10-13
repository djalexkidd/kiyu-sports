extends Node

onready var username
onready var score
onready var player_score = 0
onready var character = 1

func char_select():
	match character:
		1:
			return "res://scenes/characters/Kiyu.tscn"
		2:
			return "res://scenes/characters/Roblox.tscn"
