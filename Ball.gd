extends KinematicBody2D

var initial_ball_speed = 0
export var speed_commulator = 50
var ball_speed = initial_ball_speed

var hitcounter = 0
var max_hitcounter = 12
var velocity = Vector2()

func choose_randomly(list_of_entries):
		return list_of_entries[randi() % list_of_entries.size()]

func set_start_direction():
	randomize()
	velocity = Vector2(choose_randomly([0, 0.1, 0.2, -0.1, -0.2]), choose_randomly([1,-1]))
	velocity = velocity.normalized() * ball_speed

func _physics_process(delta):
	var collution = move_and_collide(velocity * delta)
	if collution:
		velocity = velocity.bounce(collution.normal)
		if collution.collider.is_in_group("rackets"):
			var x = velocity.x + collution.collider_velocity.x
			
			velocity = Vector2(x, velocity.y).normalized() * (ball_speed + hitcounter * speed_commulator)
			if hitcounter < max_hitcounter:
				hitcounter += 1


func _on_Timer_timeout():
	initial_ball_speed = 650
	ball_speed = 650
	randomize()
	set_start_direction()
	


func _on_Level_ball_ready():
	initial_ball_speed = 0
	ball_speed = 0
	hitcounter = 0
