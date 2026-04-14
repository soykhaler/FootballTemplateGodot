extends RigidBody2D
#hola chris

func _physics_process(delta):
	$Sprite.rotation = position.x
