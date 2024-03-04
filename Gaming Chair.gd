extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../../Upgrade Info/Name".text = "GAMING CHAIR"
		$"../../../Upgrade Info/Desciprtion".text = "It looks cool."
		$"../../../Upgrade Info/Buy Item".text = "Purchase: $1,500"
		get_node("/root/Globals").shop_item = "GC"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false
