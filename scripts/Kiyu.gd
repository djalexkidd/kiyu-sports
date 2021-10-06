extends KinematicBody2D

var velocity = Vector2(0,0)
var SPEED = 180 #Vitesse du joueur

func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		velocity.x = SPEED
	velocity = move_and_slide(velocity)
	velocity.x = lerp(velocity.x,0,0.2)
