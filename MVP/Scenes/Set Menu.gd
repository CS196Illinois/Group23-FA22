extends MarginContainer
# Go Back Button
func _on_Go_Back_Button_pressed():
	# Goes back to Main Menu
	get_tree().change_scene("res://Scenes/Main Menu.tscn")
# Continue with Last Set Button
func _on_Cont_w_Last_Set_pressed():
	# Goes to Dungeon
	get_tree().change_scene("res://Scenes/Dungeon.tscn")
