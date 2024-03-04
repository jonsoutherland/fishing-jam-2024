extends Button

var entered
var times_executed = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	print(button_pressed)
	$"../../ProgressBar".visible = true
	while $"../../ProgressBar".value < 100:
		$"../../ProgressBar".value += 1 * get_node("/root/Globals").speed_modifier
		await get_tree().create_timer(randf_range(0,0.5)).timeout
		print($"../../ProgressBar".value)
		
	get_node("/root/Globals").money += 10 * get_node("/root/Globals").money_modifier
	$"../../ProgressBar".value = 0
	$"../../ProgressBar".visible = false
	$"../../Email Background".visible = false
	$"../../Phish".visible = false
	$"../Send".visible = false
	$"../../Templates".visible = false
	$"../../Background/Dead Fish".visible = true
	$"../../Email Send".play()
	print(times_executed)
	visible = false
	
	if is_hovered() and entered == false:
		entered = true
		$"../../Hover".play()
	if !is_hovered():
		entered = false
