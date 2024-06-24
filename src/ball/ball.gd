extends Node2D

var dir = Vector2.from_angle(randf() * PI * 2)
var speed = 100


func _process(delta):
	position += dir * speed * delta
