extends Node

## Spawner 在目标节点下或者自己同级生成一个节点

@export() var template_scene: PackedScene

@export() var target: Node2D = null

@export var spawn_on_start = true


func spawn():
	var node = template_scene.instantiate()
	var _target = target if target else get_parent()
	target.add_child(node)
	return node


func _ready():
	if spawn_on_start:
		spawn()
	pass
