extends TextureButton



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_ButtonLv3_pressed() -> void:
	get_tree().change_scene("res://Scene/Lever03.tscn")
