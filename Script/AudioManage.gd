extends Node



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	if Input.is_action_just_released("click_mouse"):
		$sfx/sfx_1.play()

func playAudioFood():
	$sfx/sfx_2.play()

func playAudioDie():
	$sfx/sfx_3.play()
	
func playAudioPortal():
	$sfx/sfx_4.play()
