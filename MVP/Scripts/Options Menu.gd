extends MarginContainer
# Go Back button
func _on_Go_Back_pressed():
	# Goes back to Main Menu
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Main Menu.tscn")
