extends RigidBody2D

var dir = Vector2.from_angle(randf() * PI * 2)
var speed = 400
var min_speed = 200
var max_speed = 600


func _ready():
    self.linear_velocity.x = speed if randf() > 0.5 else -speed
    self.linear_velocity.y = (randf() * 2 - 1) * speed


func _on_body_entered(body: Node):
    EventBus.emit(EventName.ON_BALL_COLLIDE, body)

    %CollisionSoundPlayer.play()
    if body is CharacterBody2D:
        var d = 1 if self.linear_velocity.x > 0 else -1
        var t = abs(self.linear_velocity.x)
        self.linear_velocity.x = clamp(t, min_speed, max_speed) * d
        self.linear_velocity.y *= 0.8
        self.apply_impulse(Vector2(0, body.velocity.y * 40))
    pass  # Replace with function body.

