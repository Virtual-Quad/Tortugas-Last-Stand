extends Node2D
class_name CannonBall

@export var cannon_ball_sprite: AnimatedSprite2D

@export var speed: float = 1000.0

var direction: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	position += direction * delta * speed

func set_direction(cursor_vector: Vector2) -> void:
	direction = cursor_vector
