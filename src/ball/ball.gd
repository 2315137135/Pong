extends Node2D

@export() var speed = 300
var velocity = Vector2.ZERO

signal on_destory


func _ready():
	$Area2D.area_entered.connect(on_entered)
	pass


func on_entered(area):
	if area.is_in_group("dead_zone"):
		velocity = (global_position - area.global_position).normalized() * speed
