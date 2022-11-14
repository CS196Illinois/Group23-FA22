extends GridContainer
var boss: String = ""
var arr: Array
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
	#HOW DO I GO THROUGH EVERY QUESTION IN A LOOP?
	#Gets questions
	questions.push_back($"Question 1/Left Side (Prompts)/Prompt".get_text())
	questions.push_back($"Question 2/Left Side (Prompts)/Prompt".get_text())
	questions.push_back($"Question 3/Left Side (Prompts)/Prompt".get_text())
	questions.push_back($"Question 4/Left Side (Prompts)/Prompt".get_text())
	#questions should have 
	#["Type question here", "Type question here", "Type question here", "Type question here"]
	#for default set
	print(questions)
	
	#Stores answers into an array
	var answers: Array = []
	#HOW DO I GO THROUGH EVERY ANSWER IN A LOOP?
	#Gets answers
	answers.push_back($"Question 1/Right Side (Answers)/Answer".get_text())
	answers.push_back($"Question 2/Right Side (Answers)/Answer".get_text())
	answers.push_back($"Question 3/Right Side (Answers)/Answer".get_text())
	answers.push_back($"Question 4/Right Side (Answers)/Answer".get_text())
	#answers should have 
	#["Type answer here", "Type answer here", "Type answer here", "Type answer here"]
	#for default set
	print(answers)
	
	#PUTS QUESTIONS AND ANSWERS INTO A MAP WITH A QUESTION BEING A KEY AND THE ANSWER BEING A VALUE
	#Currently the map is an array with the answer following the question
	for i in range(questions.size()):
		arr.push_back(questions[i])
		arr.push_back(answers[i])
	print(arr)
	
	var map = {1: "one", 2: "two"}
	print(map.get(1))
	#Goes to Dungeon
	get_tree().change_scene("res://Scenes/Dungeon.tscn")
