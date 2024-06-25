extends RefCounted
class_name Ref
##
## 绑定变量
##

var _target: Node
var _key: String
signal changed(v)

var value:
	set(in_value):
		value = in_value
		changed.emit(value)
		if _target:
			_target.set(_key, in_value)


func _init(_value = null):
	value = _value
	pass


func bind(target: Object, key: String):
	_target = target
	_key = key

	value = value  # 触发setter


func on_change(callback: Callable):
	changed.connect(callback)


## 需要在onready之后或者@onready标签后调用
static func from_bind(target: Object, key: String, value):
	var ref = Ref.new(value)
	ref.bind(target, key)
	return ref
