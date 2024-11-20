extends Control

var profit: int = 0

#Wheat variables
var wheat_amount: int = 1

#Carrot variables
var carrot_button_cost: int = 25
var carrot_amount = 5

signal profit_changed

#Wheat
	
func _on_wheat_button_button_down() -> void:
	profit += wheat_amount
	emit_signal("profit_changed", profit)
	
#Carot
func _on_carrot_unlock_pressed() -> void:
	if profit >= carrot_button_cost:
		profit -= carrot_button_cost
		$Carrot/CarrotUnlock.disabled = true
		$Carrot/CarrotUnlock.visible = false
		$Carrot/CarrotButton.disabled = false
	else:
		pass


func _on_carrot_button_button_down() -> void:
	profit += carrot_amount
	emit_signal("profit_changed", profit)
