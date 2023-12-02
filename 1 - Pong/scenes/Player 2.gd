extends CharacterBody2D

@export var SPEED = 25


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("player2Down"):
		direction.y += 1
	if Input.is_action_pressed("player2Up"):
		direction.y += -1
	velocity = direction * SPEED
	move_and_slide()

