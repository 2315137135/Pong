extends Node
##
## 用于保存简单的游戏状态
##

@export() var _SAVE_PATH = "user://savegame.save"

var _data_object = {}


func get_item(key: String, default = null):
	return _data_object.get(key, default)


func set_item(key: String, value):
	_data_object[key] = value


func _ready():
	load_save_data()


func _exit_tree():
	save()


func load_save_data():
	var save_file = FileAccess.open(_SAVE_PATH, FileAccess.READ)
	if save_file:
		_data_object = save_file.get_var()


func save():
	var save_file = FileAccess.open(_SAVE_PATH, FileAccess.WRITE)
	if not save_file:
		return
	save_file.store_var(_data_object)
