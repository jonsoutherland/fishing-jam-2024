extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../../Email Background".visible = true
		$"../../../Phish".visible = true
		$"../../../Phish/Email Contents/Reciver/To/Recipients".visible = false
		$"../../../Phish/Email Contents/Reciver/To".text = "TO: You"
		$"../../../Phish/Email Contents/From".text = "FROM: Infinite Hazard Dev Team (infinitehazardstudios@gmail.com)"
		$"../../../Phish/Email Contents/Content".text = "Thank you so much for playing our game!

From, 

Jon “Ploobus” Southerland - Code, game design, and sound design
Rees Payne - Debugging
Max McBride - Writer and game design
S. Wheelock - Art and visuals
"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
