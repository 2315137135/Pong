extends Node


func on(event: String, callback):
	check_single(event)
	self.connect(event, callback)
	pass


func emit(event: String, value):
	check_single(event)
	emit_signal(event, value)
	pass


## 检查并添加自定义signal
func check_single(event: String):
	if self.has_user_signal(event):
		return
	self.add_user_signal(event)
	pass
