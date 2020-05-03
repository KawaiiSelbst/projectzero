extends Area2D


var mouse_pos

func _animation_finished():
	$"slash_anim".playing = 0
	$"slashcollide".disabled = 1

	
func attack():
	mouse_pos = $"..".get_local_mouse_position()
	if $"slash_anim".playing == false:
		if mouse_pos.angle() < -1.5 or mouse_pos.angle() > 1.5:
				$"slash_anim".flip_v = 1
		if mouse_pos.angle() > -1.5 and mouse_pos.angle() < 1.5:
				$"slash_anim".flip_v = 0
		$"slash_anim".playing = 1
		$"slashcollide".disabled = 0
		rotation = mouse_pos.angle()


func _on_slash_body_entered(body):
	body.take_damage(4)
	
