extends TextureButton

var nextLevel

func _pressed():
	var next = "res://Menu.tscn"
	nextLevel = get_tree().change_scene(next)
