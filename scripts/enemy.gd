extends KinematicBody2D

export var HP = 20


func _ready():
	pass

func _process(delta):
	if HP < 1:
		dead()

func dead():
	print("Enemy is Dead")
	$"Sprite".visible = 0
	$"deadtext".visible = 1
	yield(get_tree().create_timer(1), "timeout")
	queue_free()


func take_damage(damage):
	HP -= damage
	print("HP now is ", HP)
