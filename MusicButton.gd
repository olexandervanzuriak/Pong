extends TextureButton

onready var music = get_node("/root/AudioStreamPlayer2d")
onready var label = get_node("Label")

func _pressed():
	music.musicIsPlaying = !music.musicIsPlaying
	if label.text == "Music off":
		label.text = "Music on"
		music.isPaused = true
	else:
		label.text = "Music off"
		music.isPaused = false
