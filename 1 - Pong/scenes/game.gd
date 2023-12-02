extends Node2D

var player1Score: int = 0
var player2Score: int = 0

func _ready():
	pass

func _on_player_1_zone_area_entered(_area):
	if $Ball.direction.x == -1:
		player2Score += 1
		$"Player 2 Score".text = str(player2Score)
	if $Ball.direction.x == 1:
		player1Score += 1
		$"Player 1 Score".text = str(player1Score)
	print("Player 1: %d, Player 2: %d" % [player1Score, player2Score])
	$Ball.set_physics_process(false)
	$Ball.visible = false
	$Timer.start()


func _on_timer_timeout():
	$Ball.reset()
