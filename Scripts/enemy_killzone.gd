extends Area2D
@onready var game_manager = %"Game Manager"

func _on_body_entered(body):
	print("You died!")
