extends KinematicBody2D


func _ready():
	pass

func _physics_process(delta):
	controls()

func controls():
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	var up = Input.is_action_pressed('ui_up')
	var down = Input.is_action_pressed('ui_down')

	if right:
		move_and_collide(Vector2(5, 0))
	if left:
		move_and_collide(Vector2(-5, 0))
	if up:
		move_and_collide(Vector2(0, -5))
	if down:
		move_and_collide(Vector2(0, 5))