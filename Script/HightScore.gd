extends Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var size = DataPlayer.new.size()

	$VBoxContainer/Label2.text = "%s" % DataPlayer.new[size - 1]
	$VBoxContainer/Label3.text = "%s" % DataPlayer.new[size - 2]
	$VBoxContainer/Label4.text = "%s" % DataPlayer.new[size - 3]
	$VBoxContainer/Label5.text = "%s" % DataPlayer.new[size - 4]
	$VBoxContainer/Label6.text = "%s" % DataPlayer.new[size - 5]

