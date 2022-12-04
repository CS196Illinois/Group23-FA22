extends StaticBody2D

var didWeWinYet = false

func read_input():
		
	#Simply plays the boss animation, can be rigged to have a different "trigger"
	
	if Input.is_action_just_pressed("down"):
		didWeWinYet = true
	
	if !didWeWinYet:
		$AnimationPlayer.play("Boss_Bird_Flying")
	else:
		$AnimationPlayer.play("Damaged_Inflicted_Boss")
		
		
	
func _physics_process(delta):
	read_input()
