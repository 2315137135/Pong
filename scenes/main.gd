extends Node

@onready var ball_spawner := $BallSpawner

var test = DI.provide(self, "test", {"name": "123"})

func _init():
	test["name"] = 321


func _ready():
	ball_spawner.spawn()
	pass
