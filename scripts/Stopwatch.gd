extends Label

var time = 0

func _process(delta):
	time += delta
	text = "%0.2f" % time

func _on_Finish_body_exited(body):
	get_tree().paused = true
