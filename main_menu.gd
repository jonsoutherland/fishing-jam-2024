extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	$Phish.visible = false
	$"Store Items".visible = false
	$"Upgrade Info".visible = false
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_gaming_chair_pressed():
	$"Menu Click".play()
