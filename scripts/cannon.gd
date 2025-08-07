extends Node2D

@export var cannon_sprite: AnimatedSprite2D
@export var cannon_ball_fire_point: Node2D

@onready var cannon_ball_scene := preload("res://scenes/cannon_ball.tscn")
@onready var cannon_logger := LogStream.new("Cannon Logger", LogStream.LogLevel.DEBUG)

func fire() -> void:
	cannon_logger.info("Firing cannon.")
	
	cannon_sprite.play("fire")
	
	# Determine direction of cannon position to cursor position
	var cursor_direction: Vector2 = (cannon_ball_fire_point.global_position - get_global_mouse_position()).normalized()
	cannon_logger.debug("Cursor direction from cannon: ", cursor_direction)
	
	var cannon_ball_node: CannonBall = cannon_ball_scene.instantiate()
	cannon_ball_node.set_direction(cursor_direction)
	cannon_ball_fire_point.add_child(cannon_ball_node)
	

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("left_click"):
		fire()
