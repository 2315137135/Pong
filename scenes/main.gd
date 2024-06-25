extends Node

@onready var ball_spawner := $BallSpawner

var test = DI.provide(self, "test", {"name": "123"})


func _ready():
	print(%death_left)
	%death_left.deathable_entered.connect(func(_body): on_deathable_entered(true))
	%death_right.deathable_entered.connect(func(_body): on_deathable_entered(true))
	_start()
	pass


func on_deathable_entered(is_left: bool):
	print(is_left)
	ball_spawner.spawn.call_deferred()
	pass


func _start():
	ball_spawner.spawn()
	pass
