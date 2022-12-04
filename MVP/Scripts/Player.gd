extends KinematicBody2D

var velocity : Vector2 = Vector2()
var direction : Vector2 = Vector2()

func read_input():
	velocity = Vector2()
		
	#All the if statements for Input controls the players movement & sprite animation cycles
		
	if Input.is_action_pressed("ui_down"):
		$AnimationPlayer.play("Walk_Down")
		velocity.y += 1
		direction = Vector2(0, 1)
		
	if Input.is_action_just_released("ui_down"):
		$AnimationPlayer.play("Idle_Down")
		
	if Input.is_action_pressed("ui_up"):
		$AnimationPlayer.play("Walk_Up")
		velocity.y -= 1
		direction = Vector2(0, -1)
		
	if Input.is_action_just_released("ui_up"):
		$AnimationPlayer.play("Idle_Up")
		
	if Input.is_action_pressed("ui_left"):
		$AnimationPlayer.play("Walk_Left")
		velocity.x -= 1
		direction = Vector2(-1, 0)
		
	if Input.is_action_just_released("ui_left"):
		$AnimationPlayer.play("Idle_Left")
		
	if Input.is_action_pressed("ui_right"):
		$AnimationPlayer.play("Walk_Right")
		velocity.x += 1
		direction = Vector2(1, 0)
		
	if Input.is_action_just_released("ui_right"):
		$AnimationPlayer.play("Idle_Right")
		
	if Input.is_action_pressed("ui_accept"):
		$AnimationPlayer.play("Damage_Inflicted")
		
	velocity = velocity.normalized()
	velocity = move_and_slide(velocity * 200)
	
func _physics_process(delta):
	read_input()
