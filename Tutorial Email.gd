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
		$"../../../Phish/Email Contents/From".text = 'FROM: "The Guy" (youowemescammer420@scam.com)'
		$"../../../Phish/Email Contents/Content".text = "Hey, you want to be a big fish in the world pond? Get scammin’. You wanna catch some big ones?

Let’s get you started. Here’s a freebie for ya, don’t waste it.

Get to catchin’

You owe me $1,000.
"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
