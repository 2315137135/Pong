extends Node2D

var speed = 0


func move(value, delta):
	position.y += value * delta
	position.y = clamp(position.y, 0, get_viewport_rect().size.y)
	pass
