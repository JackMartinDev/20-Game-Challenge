extends Area2D

const SPEED = 30
var direction = Vector2.ZERO

func _ready():
	randomise_direction()

func _physics_process(delta):
	global_position += direction * SPEED * delta
	
func randomise_direction():
	direction.x = [1, -1].pick_random()
	direction.y = [1, -1].pick_random()

func reset():
	global_position = Vector2(50, 25)
	randomise_direction()
	set_physics_process(true)
	visible = true

func _on_body_entered(body):
	if body is CharacterBody2D:
		direction.x *= -1
	if body is StaticBody2D:
		direction.y *= -1
