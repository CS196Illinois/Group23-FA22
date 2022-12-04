extends StaticBody2D

func read_input():
		
	#Simply plays the cannon animation, can be rigged to have a different "trigger"
		
	if Input.is_action_just_released("ui_select"):
		$AnimationPlayer.play("Fire_Cannon")
	
func _physics_process(delta):
	read_input()
