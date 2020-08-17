extends TextureButton

var nextLevel

func _pressed():
	var next = "res://SpeedLevel.tscn"
	nextLevel = get_tree().change_scene(next)
