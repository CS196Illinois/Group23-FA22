extends MarginContainer

func _on_Start_Button_pressed():
	get_tree().change_scene("res://Scenes/Set Menu.tscn")

func _on_Options_pressed():
	get_tree().change_scene("res://Scenes/Options Menu.tscn")
