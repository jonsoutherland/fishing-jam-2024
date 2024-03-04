extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../../Upgrade Info/Name".text = "Template - TIER I"
		$"../../../Upgrade Info/Desciprtion".text = "Unlocks the TripStar Template"
		$"../../../Upgrade Info/Buy Item".text = "Purchase: $50"
		get_node("/root/Globals").shop_item = "TT1"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
