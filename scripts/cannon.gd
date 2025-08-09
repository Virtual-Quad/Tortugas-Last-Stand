extends Node2D
class_name Cannon

@export var cannon_sprite: AnimatedSprite2D
@export var cannon_ball_fire_point: Node2D

@onready var cannon_ball_scene := preload("res://scenes/cannon_ball.tscn")
@onready var cannon_logger := LogStream.new("Cannon Logger", LogStream.LogLevel.DEBUG)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("left_click"):
		fire()

func fire() -> void:
	cannon_logger.info("Firing cannon.")
	
	cannon_sprite.play("fire")
	
	var firing_vector: Vector2 = get_firing_vector()
	create_cannon_ball(firing_vector)

func get_firing_vector() -> Vector2:
	var cursor_direction: Vector2 = (get_global_mouse_position() - cannon_ball_fire_point.global_position).normalized()
	cannon_logger.debug("Cursor direction from cannon: ", cursor_direction)
	
	# Normalize vector to ensure the same speed regardless of firing vector
	var firing_vector: Vector2 = clamp_firing_vector(cursor_direction).normalized()
	
	return firing_vector

func clamp_firing_vector(firing_vector: Vector2) -> Vector2:
	var new_firing_vector: Vector2 = firing_vector
	
	new_firing_vector.x = clampf(firing_vector.x, -0.75, 0.75)
	new_firing_vector.y = clampf(firing_vector.y, -0.75, -0.25)
	
	cannon_logger.debug("Clamped firing vector: ", new_firing_vector)
	cannon_logger.debug("Cannon ball vector magnitude: ", new_firing_vector.length())
	
	return new_firing_vector

func create_cannon_ball(firing_vector: Vector2) -> void:
	var cannon_ball_node: CannonBall = cannon_ball_scene.instantiate()
	cannon_ball_node.set_direction(firing_vector)
	cannon_ball_fire_point.add_child(cannon_ball_node)
