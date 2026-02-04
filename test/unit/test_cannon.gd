extends GutTest

var cannon: Cannon

func before_each():
	cannon = preload("res://scenes/cannon.tscn").instantiate()
	add_child_autofree(cannon)

func test_clamp_firing_vector_normal_case():
	var input: Vector2 = Vector2(0.5, -0.5)
	var result: Vector2 = cannon.clamp_firing_vector(input)
	
	assert_between(result.x, -0.75, 0.75)
	assert_between(result.y, -0.75, -0.25)

func test_clamp_firing_vector_needs_clamping():
	var input: Vector2 = Vector2(1.0, 1.0)
	var result: Vector2 = cannon.clamp_firing_vector(input)
	
	assert_between(result.x, -0.75, 0.75)
	assert_between(result.y, -0.75, -0.25)

func test_clamp_firing_vector_negative_extreme():
	var input: Vector2 = Vector2(-1.0, -1.0)
	var result: Vector2 = cannon.clamp_firing_vector(input)
	
	assert_between(result.x, -0.75, 0.75)
	assert_between(result.y, -0.75, -0.25)
