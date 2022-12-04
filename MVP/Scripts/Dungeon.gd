extends Node2D
var correctAnswer = "4"

#Get set creator's map
var SetCreator = preload("res://Scripts/Set Creator.gd").new()
var SetCreatorMap: Dictionary = SetCreator.map
#Get import map
var ImportQuizlet = preload("res://Scripts/Import Quizlet.gd").new()
var ImportQuizletMap: Dictionary = ImportQuizlet.map

func _physics_process(_delta):
	read_input()

func read_input():
	if Input.is_action_pressed("ui_accept"):
		_damagePlayer()
	if Input.is_action_pressed("ui_cancel"):
		_damageBoss()

func _damagePlayer():
	$PlayerHealth.value = 0

func _damageBoss():
	$BossHealth.value = 0
