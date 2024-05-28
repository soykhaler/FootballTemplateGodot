extends Area2D
var player2_points = 0


func _ready():
	pass 



func _on_Area2D_body_entered(body):
	if body.get_name() == "RigidBody2D":
		print("gol")
		player2_points +=1
		get_node("%Label4").text = str(player2_points)
		yield(get_tree().create_timer(0.3),"timeout")
		get_node("%RigidBody2D").position = Vector2(-338, -77)
		get_node("%RigidBody2D").linear_velocity = Vector2(0, 0)
		get_node("%KinematicBody2D").position = Vector2(39, 19)
		get_node("%KinematicBody2D2").position = Vector2(-761, 15)
		pass # Replace with function body.
