extends TextureButton


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_ButtonLv4_pressed() -> void:
	
	get_tree().change_scene("res://Scene/Lever04.tscn")
