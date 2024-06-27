extends Node

# Reference of our ConfirmationModal scene from our scene tree
@onready var conf: ConfirmationModal = $ConfirmationModal


func _unhandled_key_input(event: InputEvent) -> void:
	# Using the ESC Key event
	if event.is_action_pressed("ui_cancel"):
		# Customize our Modal's texts
		conf.customize(
			"Are you certain?",
			"This will close the game.",
			"Quit Game",
			"Return To Game"
		)
		
		# Call the coroutine
		var is_confirmed = await conf.prompt(true)
		
		# If we're confirmed, quit the game
		if is_confirmed:
			get_tree().quit()
