extends Button

var entered
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		get_node("/root/Globals").money_modifier = randf_range(7,9)
		$"../../../Phish/Email Contents/From".text = "FROM: IRS (irs@getyourmoneyback.com)"
		$"../../../Phish/Email Contents/Content".text = "You Are Eligible for Refund

Hello [insert name],

After the last annual calculations of your fiscal activity we have determined that you are eligible for tax refund under section 501(c) (17) of the Internal Revenue Code.

Please submit the Tax Refund Request Form and allow us 3-9 days to process it.

Yours faithfully,
Internal Revenue Service
United States Department of the Treasury
"
	if is_hovered() and entered == false:
		entered = true
		$"../../../Menu Select".play()
	if !is_hovered():
		entered = false


func _on_pressed():
	$"../../../Menu Click".play()
