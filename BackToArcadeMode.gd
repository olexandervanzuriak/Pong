extends TextureButton

var nextLevel

func _pressed():
	var next = "res://ArcadeLevel.tscn"
	nextLevel = get_tree().change_scene(next)
