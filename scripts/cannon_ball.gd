extends Node2D
class_name CannonBall

@export var cannon_ball_sprite: AnimatedSprite2D
@export var life_timer: Timer

@export var speed: float = 1000.0

@onready var life_time_seconds: float = 5

var direction: Vector2 = Vector2.ZERO

func _ready():
	life_timer.start(life_time_seconds)

func _process(delta: float) -> void:
	position += direction * delta * speed

func set_direction(cursor_vector: Vector2) -> void:
	direction = cursor_vector

func _on_life_timer_timeout() -> void:
	Log.info("Cannon ball freed after " + str(life_time_seconds) + " seconds.")
	queue_free()
