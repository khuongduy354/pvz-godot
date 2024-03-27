extends Node2D
@onready var b = $Board as Board


func _ready(): 
	b.plant_tree(Plant.PlantTypes.Peashooter, Vector2(0,4))
	b.plant_tree(Plant.PlantTypes.Repeater, Vector2(1,0))
	b.plant_tree(Plant.PlantTypes.Sunflower, Vector2(1,1))
	b.plant_tree(Plant.PlantTypes.Peashooter, Vector2(1,2))
	
	
