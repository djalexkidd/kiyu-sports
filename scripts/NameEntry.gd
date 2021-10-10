extends LineEdit

var screen_height = ProjectSettings.get_setting("display/window/size/height")
var actual_resolution = OS.get_window_size()
var set_position = true
var global_position

func _on_LineEdit_text_entered(new_text):
	Global.username = text
	get_tree().change_scene("res://scenes/Field.tscn")

func reposition():
	var target_y
	if has_focus():
		var ratio = screen_height / actual_resolution.y
		target_y = min(global_position.y, screen_height - get_size().y - (OS.get_virtual_keyboard_height() * ratio))
	else:
		target_y = global_position.y
	set_global_position(Vector2(global_position.x, target_y))

func _process(delta):
	if set_position:
		global_position = get_global_position()
		set_position = false
	reposition()

func _on_PlayButton_pressed():
	_on_LineEdit_text_entered(text)
