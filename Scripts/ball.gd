extends KinematicBody2D

export (int) var speed = 300
export (int) var gravity = 20
export (int) var jump_force = 400

var direction
var velocity = Vector2.ZERO

func _ready():
	print('Start')


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	
	direction = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	velocity.x = direction * speed
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		print('Jump')
		velocity.y = -jump_force
		
	velocity.y += gravity
	velocity = move_and_slide(velocity, Vector2.UP)


func _on_BallDetector_body_entered(body):
	Global.score += 1
