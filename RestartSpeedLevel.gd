extends TextureButton

var nextLevel

func _pressed():
	var next = "res://SpeedMode.tscn"
	nextLevel = get_tree().change_scene(next)
