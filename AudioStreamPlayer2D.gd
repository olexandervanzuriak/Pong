extends AudioStreamPlayer

var music
var musicIsPlaying = true
var isPaused = false

func _ready():
	stream = preload("res://music/BleedingJustice.ogg")
	music = "BleedingJustice"
	playing = true

func _physics_process(_delta):
	if playing != musicIsPlaying:
		playing = musicIsPlaying
	elif music == "BleedingJustice" && isPaused == playing:
		stream = preload("res://music/Chargeagain!.ogg")
		playing = true
		music = "Chargeagain"
	elif music == "Chargeagain" && isPaused == playing:
		stream = preload("res://music/RoccoW-Braadslee.ogg")
		playing = true
		music = "Roccow"
	elif music == "Roccow" && isPaused == playing:
		stream = preload("res://music/BleedingJustice.ogg")
		playing = true
		music = "BleedingJustice"
		
