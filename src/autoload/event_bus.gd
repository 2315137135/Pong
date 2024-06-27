extends Node
##
## 全局事件总线
##


func on(event: StringName, callback):
	_check_single(event)
	self.connect(event, callback)
	pass


func emit(event: StringName, value):
	_check_single(event)
	emit_signal(event, value)
	pass


## 检查并添加自定义signal
func _check_single(event: StringName):
	if self.has_user_signal(event):
		return
	self.add_user_signal(event)
	pass


func get_signal(_name):
	_check_single(_name)
	return Signal(self, _name)
