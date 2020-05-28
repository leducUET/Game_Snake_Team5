extends Area2D

class_name Portal

onready var anim_player: AnimationPlayer = $AnimationPlayer

export var next_scene: PackedScene

func _ready() -> void:
	$AnimatedSprite.play("portal")

func _on_Portal_body_entered(body: Node) -> void:
	teleport()


func _get_configuration_warning() -> String:
	return "The property Next Level can't be empty" if not next_scene else ""


func teleport() -> void:
	AudioManage.playAudioPortal()
	get_tree().paused = true
	anim_player.play("fade_in")
	yield(anim_player, "animation_finished")
	get_tree().paused = false
	get_tree().change_scene_to(next_scene)
	

