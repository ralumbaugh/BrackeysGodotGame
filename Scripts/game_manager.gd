extends Node
@onready var score_label = $ScoreLabel
@onready var victory_message = $VictoryMessage

var score = 0;
var score_to_win = 10;

func add_point():
	score += 1
	print(score)
	score_label.text = "You collected " + str(score) + " coins."
	if score >= score_to_win:
		victory_message.text = "You've slain the mighty slime via capitalism!"
