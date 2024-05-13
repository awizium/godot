func move(delta):
	
	var direction = Input.get_axis("move_left", "move_right")
	
	if direction:
		velocity.x = direction * SPEED
		if is_on_floor():
			is_fall = 0
			animPlayer.speed_scale = 1
			animPlayer.play("WALK")
			
	else:
		velocity.x = 0
		if (is_on_floor()):
			is_fall = 0
			animPlayer.speed_scale = 10
			animPlayer.play("IDLE")
		
	if direction == 1:
			for i in sprite.get_children():
				i.flip_h = false
				
	elif direction == -1:
			for i in sprite.get_children():
				i.flip_h = true
				
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		if velocity.y > 0:
			animPlayer.speed_scale = 1
			if is_fall == 1:
				animPlayer.queue("FALL_LOOP")
			elif is_fall == 0:
				animPlayer.play("FALL")	
				is_fall = 1

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		animPlayer.speed_scale = 1
		animPlayer.play("JUMP")
	
		
	move_and_slide()
