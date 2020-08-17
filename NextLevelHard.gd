extends TextureButton

var _playGame

func _pressed():
	var nextLevel = preload("res://ArcadeHard.tscn")
	_playGame = get_tree().change_scene_to(nextLevel)
