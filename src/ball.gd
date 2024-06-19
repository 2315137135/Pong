extends Node2D

var my_name = "123"
var my_age = 12


# Called when the node enters the scene tree for the first time.
func _ready():
	print()
	print(self.my_name)
	self.my_name = "add"
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
