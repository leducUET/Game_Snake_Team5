extends TextureButton


export(String, FILE) var next_scene_path: = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




func _on_ButtonMn1_pressed() -> void:
		get_tree().change_scene(next_scene_path)

func _get_configuration_warning() -> String:
	return "The property Next Level can't be empty" if next_scene_path == "" else ""
