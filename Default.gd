extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		get_node("/root/Globals").money_modifier = randf_range(2,4)
		$"../../../Phish/Email Contents/From".text = "FROM: Account REcovery (recovernow@notascam.com)"
		$"../../../Phish/Email Contents/Content".text = "Password Compromised

Your password has been hacked. Please click the link below to fix this.

CLICK HERE
"

	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
