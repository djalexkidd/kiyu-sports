extends Node

onready var username
onready var score
onready var character = 2

func char_select():
	match character:
		1:
			return "res://scenes/Kiyu.tscn"
		2:
			
			return "res://scenes/Roblox.tscn"
