extends Control

var right = Ref.new(0)
var left = Ref.new(0)


func _ready():
	right.bind(%score_right, "text")
	left.bind(%score_left, "text")


