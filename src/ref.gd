extends Resource
class_name Ref
var _target: Node
var _key: String

var value:
	set(in_value):
		value = in_value
		if _target == null:
			return
		_target.set(_key, in_value)


func _init(_value = null):
	value = _value
	pass


func bind(target: Object, key: String):
	var ref = Ref.new()
	_target = target
	_key = key
	value = value
	return ref
