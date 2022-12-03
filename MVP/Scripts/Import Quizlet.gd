extends MarginContainer
var map: Dictionary = {}

func _on_Back_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Set Creator.tscn")

#NEED GET MAP TO DUNGEON
func _on_Import_pressed():
	#Gets text and parses into an array with Wesam's code
	var quizletText: String = $"Copy&Paste/Quizlet Text Container/Quizlet Text".get_text()
	var parsedQuizletText = _parse(quizletText)
	#Turns array into a dictionary
	map = _toDictionary(parsedQuizletText)
	print(map.keys())
	print(map.values())
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scenes/Dungeon.tscn")

func _parse(text: String):
	var questionAnswer = text.split('\n')
	#TEST
	#var question = questionAnswer[0].split('	')
	#var question1 = questionAnswer[1].split('	')
	#print(question[0])
	#print(question[1])
	#print(question1[0])
	#print(question1[1])
	#END TEST
	return questionAnswer

func _toDictionary(arr: Array):
	#Each part of the array has a key (question) and value (answer) seperated by a tab
	#Seperate each of these keys into a key array and values into value array
	var keys: Array = []
	var values: Array = []
	for pair in arr:
		#Split the pair into an array with [0] being question and [1] being answer
		var arrayOfPair = pair.split('	')
		#Adds on the back so it is in order
		keys.push_back(arrayOfPair[0])
		values.push_back(arrayOfPair[1])
	#keys and values should both have all of the stuff from arr
	
	#Input keys and values in dictionary
	var outputMap : Dictionary = {}
	for i in keys.size():
		outputMap[keys[i]] = values[i]
	#ouputMap should have turned the array into a dictionary
	
	return outputMap
