extends Node


func process_command(input):
	var words = input.split(" ", false)
	if words.size() == 0:
		return "Error: No words were parsed"
	var first_word = words[0]
	var second_word = ""
	if words.size() > 1:
		second_word = words[1]
	match first_word.to_lower():
		"new_game":
			new_game()
		"load_game":
			load_game()
		"settings":
			settings()
		"exit":
			exit()
		_:
			return "Unknown command"
		

func new_game():
	return "new_game"


func load_game():
	return "load_game"


func settings():
	return "settings"
	
	
func exit():
	return "exit"
