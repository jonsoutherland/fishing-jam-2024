extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../../Phish/Email Contents/From".text = "FROM: CyberBank (noreply@account.cyberbankcu.org)"
		$"../../../Phish/Email Contents/Content".text = "Information Update Needed

	Your CyberBank account information needs to be updated before your previous transfer can be completed. Please log in with your current profile information to update your information.

	Log In
	"
