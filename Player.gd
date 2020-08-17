extends KinematicBody2D

var speed = 25
var tmpPosition

func _ready():
	tmpPosition = position.y

func _physics_process(delta):
	if (position.y != tmpPosition):
		position.y = tmpPosition
	if Input.is_action_pressed("click"):
		var p = get_global_mouse_position()
		var f = Vector2()
		f.x = p.x - position.x
		move_and_collide(f * speed * delta)
