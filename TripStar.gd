extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if button_pressed:
		$"../../../Phish/Email Contents/Content".text = "Congratulations! You have won a free Cruise vacation from Trip Star for your recent purchase at Big Chain Retail Store!!!

	Click here to receive your prize!

	A 5-Day trip to Fiji on board the world’s highest rated cruise line, Royal Fiji is the world’s highest rated cruise line, and they are excitedly awaiting your visit!

	Trip Star makes people’s dreams come true with world scaling vacations and the most luxury of visits!
	"
