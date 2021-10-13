extends KinematicBody2D

var speed = 50 #Vitesse
var velocity = Vector2()
export var direction = 1 #-1 = Direction vers le haut, 1 = Direction vers le bas

func _process(delta):
	if is_on_floor() or is_on_ceiling():
		direction = direction * -1
	
	velocity.y = speed * direction
	
	velocity = move_and_slide(velocity,Vector2.UP)
