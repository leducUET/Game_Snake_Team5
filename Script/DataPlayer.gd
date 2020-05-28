extends Node


signal updated

var score: = 0 setget set_score
var hightScore = [0,0,0,0,0]

func set_score(new_score: int) -> void:
	score = new_score
	emit_signal("updated")
