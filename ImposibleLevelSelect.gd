extends TextureButton


func _pressed():
	var nextLevel = preload("res://InfinitImposibleLevel.tscn")
	var _playGame
	_playGame = get_tree().change_scene_to(nextLevel)
