extends Node2D

class_name Lever

var foodPosition = Vector2(-1, -1)
var player : Player
var food : Sprite
var gameOver = false
var rng : RandomNumberGenerator
var foodScene
export var Nfood : int


# Called when the node enters the scene tree for the first time.
func _ready():
	# Spawn first snake block
	var p = preload("res://Scene/Player.tscn")
	player = p.instance()
	add_child(player)
	player.connect("player_collided", self, "on_player_collided")
	player.connect("food_eaten", self, "on_food_eaten")
	
	rng = RandomNumberGenerator.new()
	rng.randomize()
	
	foodScene = preload("res://Scene/Food.tscn")
	
	start_game()
	#end

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (not gameOver) and $StartGame.visible and player.didMove:
		$StartGame.hide()
	

	elif not gameOver:
		# Spawn food and portal
		if foodPosition == Vector2(-1, -1):
			var legitPosition = false
			while not legitPosition:
				var x = rng.randi_range(1, 17)
				var y = rng.randi_range(1, 10)
				foodPosition = Vector2(x * player.step, y * player.step)
				legitPosition = not player.is_player_at(foodPosition)
				if $TileMap.get_cell(x, y) >= 0:
					legitPosition = false
			if player.tail.size() == Nfood :
				$Portal.position = foodPosition
			else:
				food = foodScene.instance()
				add_child(food)
				food.position = foodPosition


func on_player_collided():
	player.canMove = false
	gameOver = true
	DataPlayer.hightScore.push_back(DataPlayer.score)
	DataPlayer.score = 0
	AudioManage.playAudioDie()
	get_tree().change_scene("res://Scene/SceneGameOver.tscn")

func on_food_eaten():
	AudioManage.playAudioFood()
	DataPlayer.score += 1
	food.free()
	foodPosition = Vector2(-1, -1)

func start_game() -> void:
	$StartGame.show()
	if not food == null:
		food.free()
	foodPosition = Vector2(-1, -1)
	player.set_grid_position(Vector2(1, 2))
	gameOver = false
	player.canMove = true

