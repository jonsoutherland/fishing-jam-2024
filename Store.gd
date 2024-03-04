extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../Open".play()
		$"../../Inbox Scroller".visible = false
		$"../../Templates".visible = false
		$"../Send".visible = false
		$"../../Templates".visible = false
		$"../../Phish".visible = false
		$"../../Email Background".visible = false
		$"../../Background/Dead Fish".visible = false
		
		$"../../Store Items".visible = true
		$"../../Upgrade Info".visible = true
		
	if is_hovered() and entered == false:
		entered = true
		$"../../Hover".play()
	if !is_hovered():
		entered = false
