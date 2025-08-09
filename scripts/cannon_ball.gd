extends Node2D
class_name CannonBall

@export var cannon_ball_sprite: AnimatedSprite2D
@export var on_screen_notifier: VisibleOnScreenNotifier2D

@export var speed: float = 2000.0

var direction: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	position += direction * delta * speed

func set_direction(cursor_vector: Vector2) -> void:
	direction = cursor_vector

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	Log.debug("Cannon ball freed after exiting screen.")
	queue_free()
