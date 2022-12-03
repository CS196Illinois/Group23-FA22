extends Node2D
#Get set creator's map
var SetCreator = preload("res://Scripts/Set Creator.gd").new()
var SetCreatorMap: Dictionary = SetCreator.map
#Get import map
var ImportQuizlet = preload("res://Scripts/Import Quizlet.gd").new()
var ImportQuizletMap: Dictionary = ImportQuizlet.map

func _ready():
	_firstQuestion()
func _firstQuestion():
	#Display question
	
	#Display answers
	pass
func _secondQuestion():
	#Display question
	
	#Place the chests
	
	#Display answers
	pass
func _thirdQuestion():
	#Display question
	
	#Place the chests
	
	#Display answers
	pass
func _fourthQuestion():
	#Display question
	
	#Place the chests
	
	#Display answers
	pass

func _correctFirst():
	#Damage Boss
	_secondQuestion()
func _correctSecond():
	#Damage Boss
	_thirdQuestion()
func _correctThird():
	#Damage Boss
	_fourthQuestion()
