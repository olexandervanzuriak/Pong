extends TextureButton


func _pressed():
	var nextLevel = preload("res://ArcadeImposible.tscn")
	var _playGame
	_playGame = get_tree().change_scene_to(nextLevel)
