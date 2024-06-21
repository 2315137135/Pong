extends Node

@export() var Ball: PackedScene = preload("res://src/ball/ball.tscn")



func _spawn_ball():
    var ball = Ball.instantiate()
    