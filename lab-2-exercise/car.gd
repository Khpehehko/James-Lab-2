extends CharacterBody2D

var move_speed = 10
@onready var playersprite = $VwSagitar

func _physics_process(delta: float):
	if velocity.x > 0:
		playersprite.flip_h = true
	elif velocity.x < 0:
		playersprite.flip_h = false
		
	if Input.is_key_pressed(KEY_A):
		velocity.x -= 5.
	if Input.is_key_pressed(KEY_D):
		velocity.x += 5.
	if Input.is_key_pressed(KEY_W):
		velocity.y -= 10.
		velocity.y < 10.
	if Input.is_key_pressed(KEY_S):
		velocity.y += 10.
		velocity.y < 10.
	if Input.is_key_pressed(KEY_SPACE):
		velocity.x = 0.
		velocity.y = 0.
		
	move_and_slide()
