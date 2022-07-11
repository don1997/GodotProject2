extends Node2D

##gets screen size
onready var screen_size = get_viewport_rect().size



# Called when the node enters the scene tree for the first time.
func _ready():
	#not needed but i like it
	set_process(true)
	 


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	var player_pos = get_node("TileMap/Player")
	var thingy = player_pos.position.x
	##for debug purposes
	#print(thingy)
	if thingy <= 0:
		player_pos.position.x = 1000
	if thingy >= screen_size.x:
		player_pos.position.x = 0
		
