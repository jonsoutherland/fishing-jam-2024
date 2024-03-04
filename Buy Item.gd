extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	match get_node("/root/Globals").shop_item:
		"DT1":
			if get_node("/root/Globals").money >= 20:
				print("Demographic tier 1")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Dolores Evergreen")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Wade Ross")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Joey Tortellini")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Kevin Dynamo")
				$"../../Store Items/Uprades/Demographic Tier I".visible = false
				get_node("/root/Globals").money -= 20
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"DT2":
			if get_node("/root/Globals").money >= 150:
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Joe Boe")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Brennan Mulligan")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Harrison Teeter")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Gerta Gawig")
				$"../../Store Items/Uprades/Demographic Tier II".visible = false
				get_node("/root/Globals").money -= 150
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"DT3":
			if get_node("/root/Globals").money >= 300:
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Ronald Donald")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Jeremy Elbertson")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Mark Waller")
				$"../../Phish/Email Contents/Reciver/To/Recipients".add_item("Terry Godswill")
				$"../../Store Items/Uprades/Demographic Tier III".visible = false
				get_node("/root/Globals").money -= 300
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"RT1":
			if get_node("/root/Globals").money >= 25:
				get_node("/root/Globals").speed_modifier += 2
				$"../../Store Items/Uprades/Router Tier I".visible = false
				get_node("/root/Globals").money -= 25
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"RT2":
			if get_node("/root/Globals").money >= 50:
				get_node("/root/Globals").speed_modifier += 4
				$"../../Store Items/Uprades/Router Tier II".visible = false
				get_node("/root/Globals").money -= 50
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"RT3":
			if get_node("/root/Globals").money >= 150:
				get_node("/root/Globals").speed_modifier += 8
				$"../../Store Items/Uprades/Router Tier III".visible = false
				get_node("/root/Globals").money -= 150
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"GC":
			if get_node("/root/Globals").money >= 1500:
				get_node("/root/Globals").speed_modifier += 4
				$"../../Store Items/Uprades/Gaming Chair".visible = false
				get_node("/root/Globals").money -= 1500
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
				
				$"../../Win Screen".visible = true
				$"../../Win Music".play()
				await get_tree().create_timer(11).timeout
				$"../../Win Screen/Sprite2D".visible = true
				$"../../Win Screen/Sprite2D2".visible = true
				
				var x = 0
				var y = 0
				var rotate = true
				while x < 16:
					if rotate:
						$"../../Win Screen/Sprite2D".flip_h = true
						$"../../Win Screen/Sprite2D".rotate(-0.5)
						rotate = false
					else:
						$"../../Win Screen/Sprite2D".flip_h = false
						$"../../Win Screen/Sprite2D".rotate(0.5)
						rotate = true
					await get_tree().create_timer(0.4615).timeout
					x += 1
					print(x)
					
				while y < 600:
					y += 1
					$"../../Win Screen/Sprite2D".rotate(0.5)
					print (y)
					await get_tree().create_timer(0.01).timeout
					
				get_tree().quit()
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"PBYD":
			if get_node("/root/Globals").money >= 1000:
				$"../../Store Items/Uprades/Pay Back Your Debt".visible = false
				get_node("/root/Globals").money -= 1000
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"TT1":
			if get_node("/root/Globals").money >= 50:
				get_node("/root/Globals").speed_modifier += 4
				$"../../Templates/Inbox Emails/TripStar".visible = true
				$"../../Store Items/Uprades/Template Tier I".visible = false
				get_node("/root/Globals").money -= 50
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"TT2":
			if get_node("/root/Globals").money >= 100:
				$"../../Templates/Inbox Emails/Junglebuy".visible = true
				$"../../Store Items/Uprades/Template Tier II".visible = false
				get_node("/root/Globals").money -= 100
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"TT3":
			if get_node("/root/Globals").money >= 200:
				$"../../Templates/Inbox Emails/IRS".visible = true
				$"../../Store Items/Uprades/Template Tier III".visible = false
				get_node("/root/Globals").money -= 200
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"TT4":
			if get_node("/root/Globals").money >= 300:
				$"../../Templates/Inbox Emails/NetVideo".visible = true
				$"../../Store Items/Uprades/Template Tier IV".visible = false
				get_node("/root/Globals").money -= 300
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
		"TT5":
			if get_node("/root/Globals").money >= 500:
				$"../../Templates/Inbox Emails/CyberBank".visible = true
				$"../../Store Items/Uprades/Template Tier V".visible = false
				get_node("/root/Globals").money -= 500
				$"../../Purchased".play()
				$"../Name".text = ""
				$"../Desciprtion".text = ""
				$".".text = ""
			else:
				$"../../Error".play()
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x -= 10
				await get_tree().create_timer(0.1).timeout
				$"../../Money Info".position.x += 10
				await get_tree().create_timer(0.1).timeout

