extends RigidBody2D


func _physics_process(delta):
	$Sprite.rotation = position.x
