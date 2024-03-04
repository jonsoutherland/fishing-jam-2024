extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../Open".play()
		$"../../Inbox Scroller".visible = true
		$"../../Templates".visible = false
		$"../../Email Background".visible = false
		$"../../Phish".visible = false
		$"../../Store Items".visible = true
		$"../Send".visible = false
		$"../../Background/Dead Fish".visible = true
		$"../../Store Items".visible = false
		
		$"../../Store Items".visible = false
		$"../../Upgrade Info".visible = false
		
		
	if is_hovered() and entered == false:
		entered = true
		$"../../Hover".play()
	if !is_hovered():
		entered = false
