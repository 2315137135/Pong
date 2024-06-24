extends Node

@onready var ball_spawner = $BallSpawner


func _ready():
	ball_spawner.spawn()
	pass
