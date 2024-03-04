extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		get_node("/root/Globals").money_modifier = randf_range(5,7)
		$"../../../Phish/Email Contents/From".text = "FROM: Junglebuy (badpurchasefix144001@junglefix.com)"
		$"../../../Phish/Email Contents/Content".text = "You’re recent purchase at junglebuy.com did not go through.

Please update your information to continue.

Log in below.
"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
