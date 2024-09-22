extends Area2D

@onready var game_manager = %"Game Manager"
@onready var animation_player = $AnimationPlayer
@onready var powerup_sound = $PowerupSound

func _on_body_entered(_body):
	game_manager.add_point()
	animation_player.play("pickup")
	if game_manager.score == game_manager.score_to_win:
		powerup_sound.play()
		print("You did it!")
