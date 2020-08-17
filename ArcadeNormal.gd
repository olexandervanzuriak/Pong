extends Node2D

signal ball_ready
onready var AI = get_node("Ai")
onready var Ball = get_node("Ball")
onready var AIScore = get_node("AIScore")
onready var PlayerScore = get_node("PlayerScore")
onready var timer = get_node("Timer")
onready var Line = get_node("Line")
var nextLevel
var nextLevelLose
var speed = 5
var halfScreen
var tmpPosition
var AIStart = 0
var PlayerStart = 0
var halfXScreen

func _ready():
	halfScreen = get_viewport().size.y / 2
	halfXScreen = get_viewport().size.x / 2
	tmpPosition = AI.position.y

func _physics_process(delta):
	var f = Vector2()
	if (tmpPosition != AI.position.y):
		AI.position.y = tmpPosition
	if (Ball.position.y <= Line.position.y):
		f.x = Ball.position.x - AI.position.x
	AI.move_and_collide(f * speed * delta)


func _on_Up_body_entered(_body):
	emit_signal("ball_ready")
	timer.start()
	var score = int(PlayerScore.get_text())
	if PlayerStart == 2:
		PlayerScore.set_text(str(score+1))
	elif PlayerStart == 0:
		PlayerStart = 1
	elif PlayerStart == 1:
		PlayerStart = 2
	if score == 9:
		var level = preload("res://WinNormal.tscn")
		nextLevel = get_tree().change_scene_to(level)
	Ball.set_position(Vector2(Line.position))
	Ball.set_start_direction()

func _on_Down_body_entered(_body):
	emit_signal("ball_ready")
	timer.start()
	var score = int(AIScore.get_text())
	if AIStart == 2:
		AIScore.set_text(str(score+1))
	elif AIStart == 0:
		AIStart = 1
	elif AIStart == 1:
		AIStart = 2
	if score == 9:
		var level = preload("res://LoseArcade.tscn")
		nextLevelLose = get_tree().change_scene_to(level)
	Ball.set_position(Vector2(Line.position))
	Ball.set_start_direction()
