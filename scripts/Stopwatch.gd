extends Label

var time = 0

func _process(delta):
	time += delta
	text = "%0.2f" % time
