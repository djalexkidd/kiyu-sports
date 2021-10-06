extends KinematicBody2D

var velocity = Vector2(0,0)
var SPEED = 180 #Vitesse du joueur
var num_frames
var current_frame = 0

func _ready():
	num_frames = $AnimatedSprite.get_sprite_frames().get_frame_count("walk")

func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		velocity.x = SPEED
		current_frame = (current_frame + 1) % num_frames
		$AnimatedSprite.set_frame(current_frame)
	velocity = move_and_slide(velocity)
	velocity.x = lerp(velocity.x,0,0.2)
