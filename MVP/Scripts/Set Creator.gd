extends GridContainer
var boss: String = ""
var arr: Array
var map: Dictionary = {}
#BOSS DROPDOWN BUTTON
func _on_Boss_Dropdown_ready():
	#Insert Bosses here
	$"Boss Type/Boss Dropdown".get_popup().add_check_item("Alfred the Parrot")
	$"Boss Type/Boss Dropdown".get_popup().add_item("Taz the Gorilla")
	$"Boss Type/Boss Dropdown".get_popup().add_item("???")
	#BOSS NEEDS TO GET WHAT THE USER CHOSE
	boss = $"Boss Type/Boss Dropdown".get_popup().get_item_text(0)

#Go Back to Set Menu Button
func _on_Go_Back_Button_pressed():
	get_tree().change_scene("res://Scenes/Set Menu.tscn")

#CREATE SET BUTTON
func _on_Create_Set_Button_pressed():
	#Stores questions into an array
	var questions: Array = []
	questions.push_back($"Question 1/Left Side (Prompts)/Prompt".get_text())
	questions.push_back($"Question 2/Left Side (Prompts)/Prompt".get_text())
	questions.push_back($"Question 3/Left Side (Prompts)/Prompt".get_text())
	questions.push_back($"Question 4/Left Side (Prompts)/Prompt".get_text())
	#Stores answers into an array
	var answers: Array = []
	answers.push_back($"Question 1/Right Side (Answers)/Answer".get_text())
	answers.push_back($"Question 2/Right Side (Answers)/Answer".get_text())
	answers.push_back($"Question 3/Right Side (Answers)/Answer".get_text())
	answers.push_back($"Question 4/Right Side (Answers)/Answer".get_text())
	
	#Turns arrays into Dictionary
	for i in range(questions.size()):
		map[questions[i]] = answers[i]
	
	#Goes to Dungeon
	get_tree().change_scene("res://Scenes/Dungeon.tscn")

#Import Button
func _on_Import_Set_Button_pressed():
	get_tree().change_scene("res://Scenes/Import Quizlet.tscn")
