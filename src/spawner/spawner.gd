##
## Spawner 在目标节点下或者自己同级生成一个节点
##
extends Node2D

@export var template_scene: PackedScene
@export var spawn_on_start = false


## 生成实例
func spawn():
	var node = template_scene.instantiate()
	if node is Node2D:
		node.position = position
	get_parent().add_child(node)
	return node


func _ready():
	print(DI.inject(self, "test"))
	if spawn_on_start:
		spawn()
	pass
