extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
 $VBoxContainer/Label2.text = "Your Score: %s" % DataPlayer.score
