extends TextureButton



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




func _on_TextureButton_pressed() -> void:
	get_tree().change_scene("res://Scene/Lever01.tscn")
