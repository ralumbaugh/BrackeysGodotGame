extends Node2D

const speed = 60
@onready var ray_cast_right = $RayCastRight
@onready var raycast_left = $RaycastLeft
@onready var animated_sprite = $AnimatedSprite2D
@onready var game_manager = %"Game Manager"
@onready var animation_player = $AnimationPlayer

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if game_manager.score >= game_manager.score_to_win:
		# TODO: Add death animation before destroying slime.
		queue_free()
	else:
		if ray_cast_right.is_colliding():
			direction = -1
			animated_sprite.flip_h = true
		if raycast_left.is_colliding():
			direction = 1
			animated_sprite.flip_h = false
	
		position.x += direction * speed * delta
