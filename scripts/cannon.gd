extends Node2D

@export var cannonSprite: AnimatedSprite2D

@export var fire_cooldown_seconds: float = 0.5

func fire():
	Log.info("Firing cannon.")
	cannonSprite.play("fire")

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("left_click"):
		fire()
