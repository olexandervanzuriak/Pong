extends TextureButton

var nextLevel

func _pressed():
	var level = preload("res://SpeedMode.tscn")
	nextLevel = get_tree().change_scene_to(level)
