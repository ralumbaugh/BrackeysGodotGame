extends Node2D

const speed = 60
@onready var ray_cast_right = $RayCastRight
@onready var raycast_left = $RaycastLeft
@onready var animated_sprite = $AnimatedSprite2D

var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * speed * delta
