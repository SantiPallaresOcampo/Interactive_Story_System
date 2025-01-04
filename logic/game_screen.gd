extends PanelContainer

var stat = {"health": 5, "mana": 5, "coins": 0, "strength": 3, "intelligence": 3}

@onready var stats_label = $MarginContainer/VBoxContainer/HBoxContainer/Label

func _ready():
	stats_label.text = str("HP: "+str(stat["health"])+", "+"MP: "+str(stat["mana"])+ ", "+"Coins: "+str(stat["coins"])+"\nSTR: "+str(stat["strength"])+", "+"INT: "+str(stat["intelligence"]))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	stats_label.text = str("HP: "+str(stat["health"])+", "+"MP: "+str(stat["mana"])+ ", "+"Coins: "+str(stat["coins"])+"\nSTR: "+str(stat["strength"])+", "+"INT: "+str(stat["intelligence"]))
	for stats in stat:
		if stat[stats] <=0:
			stat[stats] = 0


func _on_button_pressed():
	OS.shell_open("https://www.youtube.com/@-RedIndieGames")
