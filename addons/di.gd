extends RefCounted
'''
依赖注入
'''
class_name DI

static var _provide_state = {}


## 寻获取在自己身上或者父级上注入的状态
static func inject(target: Node, key: String, default_value = null):
	var _target = target
	while _target:
		if _provide_state.has(_target) && _provide_state[_target].has(key):
			return _provide_state[_target][key]
		else:
			_target = _target.get_parent()

	return default_value
	pass


## 向自己和子级提供属性
static func provide(target: Node, key: String, value):
	if not _provide_state.has(target):
		_provide_state[target] = {}

	_provide_state[target][key] = value
	return value
	pass
