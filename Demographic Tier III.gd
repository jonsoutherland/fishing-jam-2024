extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../../Upgrade Info/Name".text = "DEMOGRAPHIC - TIER III"
		$"../../../Upgrade Info/Desciprtion".text = "Adds Ronald Donald, Jeremy Elbertson, Mark Waller, and Terry Godswill"
		$"../../../Upgrade Info/Buy Item".text = "Purchase: $300"
		get_node("/root/Globals").shop_item = "DT3"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
