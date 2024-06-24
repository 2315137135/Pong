extends RigidBody2D

var dir = Vector2.from_angle(randf() * PI * 2)
var speed = 400


func _ready():
	self.linear_velocity = dir * speed



