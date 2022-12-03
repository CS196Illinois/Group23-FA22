extends MarginContainer

# Go Back Button
func _on_Go_Back_Button_pressed():
	# Goes back to Main Menu
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Main Menu.tscn")

# Continue with Last Set Button
func _on_Cont_w_Last_Set_pressed():
	# Goes to Dungeon
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Dungeon.tscn")

# New Set Button
func _on_New_Set_pressed():
	#Goes to Set Creator
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Set Creator.tscn")
