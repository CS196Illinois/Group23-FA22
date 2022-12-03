extends MarginContainer
# Start Button
func _on_Start_Button_pressed():
	# Goes to Set Menu
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Set Menu.tscn")
# Options Button
func _on_Options_pressed():
	# Goes to Options Menu
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Options Menu.tscn")
