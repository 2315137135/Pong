extends "res://src/pawn/pawn.gd"


func _physics_process(_delta):
	var input_axis = Input.get_axis("up", "down")
	self.move(input_axis, _delta)
