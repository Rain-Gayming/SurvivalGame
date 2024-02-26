extends RayCast3D

func _process(delta):
	#checks if the raycast hits something
	if Input.is_action_just_pressed("interact"):
		if is_colliding(): 
			#script on object
			var objectScript = get_collider().get_script()
			
			#if interact key is pressed pick up item
			if objectScript == groundItem:
				objectScript.interact()
