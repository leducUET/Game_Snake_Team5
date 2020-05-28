extends Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DataPlayer.hightScore.sort()
	var size = DataPlayer.hightScore.size() 
#	if DataPlayer.hightScore.size() > 5:
#		DataPlayer.hightScore.pop_back()
		
	$VBoxContainer/Label2.text = "%s" % DataPlayer.hightScore[size - 1]
	$VBoxContainer/Label3.text = "%s" % DataPlayer.hightScore[size - 2]
	$VBoxContainer/Label4.text = "%s" % DataPlayer.hightScore[size - 3]
	$VBoxContainer/Label5.text = "%s" % DataPlayer.hightScore[size - 4]
	$VBoxContainer/Label6.text = "%s" % DataPlayer.hightScore[size - 5]
