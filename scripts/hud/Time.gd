extends Label

func _process(delta):
	text = "%d:%02d" % [floor($Timer.time_left / 60), int($Timer.time_left) % 60] #Affiche le Timer

func _on_Timer_timeout(): #Si le Timer est écoulé
	Global.score = Global.player_score
	Global.player_score = 0
	get_tree().change_scene("res://scenes/menu/Results.tscn")
