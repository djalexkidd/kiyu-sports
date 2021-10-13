extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 500 #Vitesse

func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		velocity.x = SPEED
	velocity = move_and_slide(velocity,Vector2.UP)

func _on_Target_carriage_return():
	position = Vector2(0, 0)
	velocity.x = 0

func _on_Miss_body_entered(body):
	_on_Target_carriage_return()

func _on_100pts_body_entered(body):
	Global.player_score += 100
	_on_Target_carriage_return()

func _on_70pts_body_entered(body):
	Global.player_score += 70
	_on_Target_carriage_return()

func _on_50pts_body_entered(body):
	Global.player_score += 50
	_on_Target_carriage_return()

func _on_30pts_body_entered(body):
	Global.player_score += 30
	_on_Target_carriage_return()

func _on_20pts_body_entered(body):
	Global.player_score += 20
	_on_Target_carriage_return()

func _on_10pts_body_entered(body):
	Global.player_score += 10
	_on_Target_carriage_return()

func _on_5pts_body_entered(body):
	Global.player_score += 5
	_on_Target_carriage_return()
