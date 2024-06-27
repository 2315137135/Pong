extends Area2D

signal deathable_entered(body)


func _ready():
	body_entered.connect(_on_body_entered)


func _on_body_entered(_body: Node):
	if _body.is_in_group("can_death"):
		deathable_entered.emit(_body)
		_body.queue_free()
	pass
