extends TextureButton

var nextLevel

func _pressed():
	var next = "res://ArcadeEasy.tscn"
	nextLevel = get_tree().change_scene(next)
