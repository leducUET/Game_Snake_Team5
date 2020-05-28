extends Node


onready var pause_overlay: ColorRect = $ColorRect

var paused: = false setget set_paused

func _ready() -> void:
	DataPlayer.connect("updated", self, "update_interface")
	update_interface()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		self.paused = not self.paused

func update_interface() -> void:
	$Label.text = "Score: %s" % DataPlayer.score

func set_paused(value: bool) -> void:
	paused = value
	get_tree().paused = value
	pause_overlay.visible = value

