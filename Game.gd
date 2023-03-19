extends Control

const InputResponse = preload("res://input_response.tscn")
const DialogueWindow = preload("res://dialogue_window.tscn")

@onready var history_rows = $BG/MarginContainer/Rows/GameInfo/ScrollContainer/HistoryRows


func _on_input_text_submitted(new_text: String) -> void:
	var input_response = InputResponse.instantiate()
	history_rows.add_child(input_response)
