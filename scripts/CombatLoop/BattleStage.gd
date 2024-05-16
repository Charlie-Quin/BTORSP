extends Node

class_name Stage

#the player's gamepieces
var playerPieces

#the enemy's pieces
var enemyPieces

@export var encounterName : String = ""

var encounter : Encounter

func _ready():
	
	encounter = EncounterConstants.getConstant(encounterName) 
	
	var i = -1
	for shell in encounter.getShells():
		i += 1
		%characters.add_child(shell)
		
		shell.global_position = %EnemyPositions.get_child(i).global_position
		
		
	
