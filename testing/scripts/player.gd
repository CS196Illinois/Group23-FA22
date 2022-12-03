extends KinematicBody2D

var velocity : Vector2 = Vector2()
var direction : Vector2 = Vector2()

func read_input():
	velocity = Vector2()
		
	#All the if statements for Input controls the players movement & sprite animation cycles
		
	if Input.is_action_pressed("down"):
		$AnimationPlayer.play("Walk_Down")
		velocity.y += 1
		direction = Vector2(0, 1)
		
	if Input.is_action_just_released("down"):
		$AnimationPlayer.play("Idle_Down")
		
	if Input.is_action_pressed("up"):
		$AnimationPlayer.play("Walk_Up")
		velocity.y -= 1
		direction = Vector2(0, -1)
		
	if Input.is_action_just_released("up"):
		$AnimationPlayer.play("Idle_Up")
		
	if Input.is_action_pressed("left"):
		$AnimationPlayer.play("Walk_Left")
		velocity.x -= 1
		direction = Vector2(-1, 0)
		
	if Input.is_action_just_released("left"):
		$AnimationPlayer.play("Idle_Left")
		
	if Input.is_action_pressed("right"):
		$AnimationPlayer.play("Walk_Right")
		velocity.x += 1
		direction = Vector2(1, 0)
		
	if Input.is_action_just_released("right"):
		$AnimationPlayer.play("Idle_Right")
		
	velocity = velocity.normalized()
	velocity = move_and_slide(velocity * 200)
	
func _physics_process(delta):
	read_input()
