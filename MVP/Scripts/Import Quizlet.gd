extends MarginContainer

func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/Set Creator.tscn")\

#NEED TO MAKE PARSED DATA INTO MAP AND GET MAP TO DUNGEON
func _on_Import_pressed():
	#Gets text and parses into an array with Wesam's code
	var quizletText: String = $"Copy&Paste/Quizlet Text Container/Quizlet Text".get_text()
	var arr = _parse(quizletText)
	#TURNS ARRAY INTO A MAP WITH HAOZHEN'S CODE
	var map = _toMap(arr)
	get_tree().change_scene("res://Scenes/Dungeon.tscn")

func _parse(text: String):
	var questionAnswer = text.split('\n')
	var question = questionAnswer[0].split('	')
	var question1 = questionAnswer[1].split('	')
	print(question[0])
	print(question[1])
	print(question1[0])
	print(question1[1])
	return questionAnswer

func _toMap(arr: Array):
	
