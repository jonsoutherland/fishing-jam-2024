extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		get_node("/root/Globals").money_modifier = randf_range(8,12)
		$"../../../Phish/Email Contents/From".text = "FROM: NetVideo (budgeloedhu421//splitscreen.humor@supermailc.om)"
		$"../../../Phish/Email Contents/Content".text = "Hi,

Unfortunately we can not authorize your
payment for the next billing cycle of your subscription.

Obviously, we want you back. If you change your mind, please restart your membership to start right back where you left off and get back to watching all the shows & movies you love.

- netvideo team
"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
