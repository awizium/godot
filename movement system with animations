var direction = Input.get_vector("a", "d", "w", "s")  
	
	if direction:
		
		velocity = direction * speed
		
		if direction.x > 0:
			anim.play("run_e")
			idle = "e"
			
		if direction.x < 0:
			anim.play("run_w")
			idle = "w"
			
		if direction.x == 0:
			
			if direction.y < 0:
				anim.play("run_n")
				idle = "n"
				
			if direction.y > 0:
				anim.play("run_s")
				idle = "s"
			
			
	else:
		print(idle)
		if idle == "e":
			anim.play("idle_e")
		if idle == "w":
			anim.play("idle_w")
		if idle == "n":
			anim.play("idle_n")
		if idle == "s":
			anim.play("idle_s")
		velocity = Vector2()
	
	
	
	
	
	move_and_slide()
