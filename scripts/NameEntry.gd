extends Control

func _on_LineEdit_text_entered(new_text):
	Global.username = $LineEdit.text
	get_tree().change_scene("res://scenes/Field.tscn")
