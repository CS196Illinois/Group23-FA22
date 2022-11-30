extends MarginContainer

var description = """This is a test question	this is the answer
This is another question	this is another answer"""
var questionAnswer = description.split('\n')
var question = questionAnswer[0].split('	')
var question1 = questionAnswer[1].split('	')

func _ready():
	print(question[0])
	print(question[1])
	print(question1[0])
	print(question1[1])

func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/Set Creator.tscn")\

#NEED TO PARSE AND GET DATA TO DUNGEON
func _on_Import_pressed():
	get_tree().change_scene("res://Scenes/Dungeon.tscn")
