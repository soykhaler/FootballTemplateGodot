extends KinematicBody2D

# Constantes
export var GRAVITY = 40
export var SPEED = 400
export var JUMP_HEIGHT = -750

# Variables
var velocity = Vector2()

func _physics_process(delta):
	# Movimiento horizontal
	if Input.is_action_pressed('ui_right'):
		velocity.x = SPEED
		$Sprite.flip_h = true
	elif Input.is_action_pressed('ui_left'):
		velocity.x = -SPEED
		$Sprite.flip_h = false

	else:
		velocity.x = 0

	# Movimiento vertical
	velocity.y += GRAVITY

	# Salto
	if Input.is_action_just_pressed('ui_up') and is_on_floor():
		velocity.y = JUMP_HEIGHT

	# Aplicar movimiento
	velocity = move_and_slide(velocity, Vector2.UP)
