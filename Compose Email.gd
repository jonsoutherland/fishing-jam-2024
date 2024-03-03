extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../Open".play()
		$"../../Email Background".visible = true
		$"../Send".visible = true
		$"../../Templates".visible = true
		$"../../Phish".visible = true
		$"../../Inbox Scroller".visible = false
		$"../../Store Items".visible = false
	if is_hovered() and entered == false:
		entered = true
		$"../../Hover".play()
	if !is_hovered():
		entered = false
