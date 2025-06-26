extends CharacterBody2D

@export var speed = 20

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity += input_direction * speed
	
	if Input.is_action_just_pressed("jump"):
		velocity.y -= 1000;

func _physics_process(delta):
	get_input()
	velocity.y += 100
	velocity.x *= 0.95
	move_and_slide()
