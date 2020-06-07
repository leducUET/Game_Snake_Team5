extends Node


signal updated
var path = "res://HightScore/data.txt"

var score: = 0 setget set_score

var new = []

var file = File.new()

func set_score(new_score: int) -> void:
	score = new_score
	emit_signal("updated")

func get_score(value : int):
	file.open(path, File.READ_WRITE)
	file.seek_end()
	file.store_line(str(value))
	file.close()

func up_date_HightScore():
	file.open(path, File.READ)
	new.clear()
	while not file.eof_reached():
		var temp = file.get_line()
		new.push_back(int(temp))
	new.sort()
	file.close()
