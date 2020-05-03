extends AnimatedSprite

var mouse_pos
func _process(delta):
	get_input()


func _animation_finished():
	playing = 0


func get_input():
	if Input.is_action_pressed("m_left"):
		attack()


func attack():
	mouse_pos = $"..".get_local_mouse_position()
	if playing == false:
		if mouse_pos.angle() < -1.5 or mouse_pos.angle() > 1.5:
				flip_v = 1
		if mouse_pos.angle() > -1.5 and mouse_pos.angle() < 1.5:
				flip_v = 0
		playing = 1
		print(mouse_pos.angle())
		rotation = mouse_pos.angle()
