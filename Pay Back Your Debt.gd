extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../../Upgrade Info/Name".text = "Pay Back Your Debt"
		$"../../../Upgrade Info/Desciprtion".text = "Is this a win?"
		$"../../../Upgrade Info/Buy Item".text = "Purchase: $1,000"
		get_node("/root/Globals").shop_item = "PBYD"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
