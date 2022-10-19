extends MarginContainer
# Start Button
func _on_Start_Button_pressed():
	# Goes to Set Menu
	get_tree().change_scene("res://Scenes/Set Menu.tscn")
# Options Button
func _on_Options_pressed():
	# Goes to Options Menu
	get_tree().change_scene("res://Scenes/Options Menu.tscn")
