extends TextureButton



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_InterButton1_pressed() -> void:
	DataPlayer.score = 0
	get_tree().paused = false
	get_tree().reload_current_scene()
