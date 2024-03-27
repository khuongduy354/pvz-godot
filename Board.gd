extends Node2D
class_name Board

@export var width = 9 
@export var height = 5
@export var CELL_SIZE = Vector2(90,115)

func draw_board(): 
	for i in range(width): 		for j in range(height): 
			var cell = preload("res://Cell.tscn").instantiate()
			$cells.add_child(cell)
			cell.global_position = Vector2(i*CELL_SIZE.x,j*CELL_SIZE.y) + position

func plant_tree(p_type: Plant.PlantTypes, idx: Vector2): 
	var cell = $cells.get_child(idx.x*height+idx.y)
	if !cell.plant_tree(p_type):
		print("Slot occupied")
		
func _ready(): 
	draw_board()
