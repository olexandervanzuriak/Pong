extends TextureButton

onready var music = get_node("/root/AudioStreamPlayer2d")
onready var label = get_node("Label")

func _ready():
	if music.isPaused == false:
		label.text = "Music off"
	else:
		label.text = "Music on"

func _pressed():
	music.musicIsPlaying = !music.musicIsPlaying
	if music.isPaused == false:
		label.text = "Music on"
		music.isPaused = true
	else:
		label.text = "Music off"
		music.isPaused = false
