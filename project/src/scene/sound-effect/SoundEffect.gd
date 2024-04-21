extends Node

onready var theme = $Theme
onready var game_over = $GameOver

# Game over
func game_over():
	game_over.play()

# Theme
func theme():
	theme.play()

# Stop Theme
func stop_theme():
	theme.stop()
