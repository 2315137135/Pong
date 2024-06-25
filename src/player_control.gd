extends Node

@export var target: CharacterBody2D = self.get_parent()


func _physics_process(_delta):
	var input_axis = -Input.get_axis("down", "up")
	target.velocity.y = input_axis * 800 * _delta
	target.move_and_collide(target.velocity)
	pass
