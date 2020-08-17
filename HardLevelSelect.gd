extends TextureButton

func _pressed():
	var nextLevel = preload("res://InfinitHardLevel.tscn")
	var _playGame
	_playGame = get_tree().change_scene_to(nextLevel)
