extends Label

var time = 0
signal results

func _process(delta):
	time += delta
	text = "%0.2f" % time

func _on_Finish_body_exited(body):
	Global.score = time
	emit_signal("results")
