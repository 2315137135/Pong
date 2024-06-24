extends Control

var left = Ref.new(0)
var right = Ref.new(0)


func _ready():
	left.bind(%score_left, "text")
	right.bind(%score_right, "text")


func _process(_delta):
	left.value += 1
