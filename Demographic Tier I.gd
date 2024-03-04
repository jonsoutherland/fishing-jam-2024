extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../../Upgrade Info/Name".text = "DEMOGRAPHIC - TIER I"
		$"../../../Upgrade Info/Desciprtion".text = "Adds Dolores Evergreen, Wade Ross, Joey Tortellini, and Kevin Dynamo"
		$"../../../Upgrade Info/Buy Item".text = "Purchase: $20"
		get_node("/root/Globals").shop_item = "DT1"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
