extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 180 #Vitesse du joueur
const JUMPFORCE = -600
const GRAVITY = 35 #Gravité
var num_frames
var current_frame = 0
export var allow_jump = false

func _ready():
	num_frames = $AnimatedSprite.get_sprite_frames().get_frame_count("walk")

func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		velocity.x = SPEED
		current_frame = (current_frame + 1) % num_frames
		$AnimatedSprite.set_frame(current_frame)
	if Input.is_action_just_pressed("jump") and is_on_floor() and allow_jump:
		velocity.y = JUMPFORCE
	
	velocity.y = velocity.y + GRAVITY
	velocity = move_and_slide(velocity,Vector2.UP)
	velocity.x = lerp(velocity.x,0,0.2)
