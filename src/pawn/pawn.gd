extends Node2D

@export_range(20, 100, 10) var width = 50:
	set(value):
		%CollisionShape2D.scale.x = value
		width = value

@export_range(500,2000,50) var height = 500:
	set(value):
		%CollisionShape2D.scale.y = value
		height = value