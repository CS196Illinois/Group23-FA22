extends MarginContainer
# Go Back button
func _on_TextureButton_pressed():
	# Goes back to Main Menu
	get_tree().change_scene("res://Scenes/Main Menu.tscn")
