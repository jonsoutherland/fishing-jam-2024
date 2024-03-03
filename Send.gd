extends Button

var entered
var times_executed = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		print(button_pressed)
		$"../../ProgressBar".visible = true
		while $"../../ProgressBar".value < 100:
			$"../../ProgressBar".value += 1 * get_node("/root/Globals").speed_modifier
			print($"../../ProgressBar".value)
		
		get_node("/root/Globals").money += 10 * get_node("/root/Globals").money_modifier
		$"../../ProgressBar".value = 0
		$"../../ProgressBar".visible = false
		$"../../Email Background".visible = false
		$"../../ScrollContainer".visible = false
		$"../../Email Send".play()
		$"../Send".visible = false
		print(times_executed)
		visible = false
	
	if is_hovered() and entered == false:
		entered = true
		$"../../Hover".play()
	if !is_hovered():
		entered = false
