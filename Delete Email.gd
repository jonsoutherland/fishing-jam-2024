extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../Close".play()
		$"../../Email Background".visible = false
		$"../Send".visible = false
		$"../../Templates".visible = false
		$"../../Phish".visible = false
		$"../../Background/Dead Fish".visible = true
		$"../../Store Items".visible = false
		$"../../Upgrade Info".visible = false
	if is_hovered() and entered == false:
		entered = true
		$"../../Hover".play()
	if !is_hovered():
		entered = false
