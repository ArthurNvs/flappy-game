extends Node

var _score: int = 0
var _high_score: int = 0


func get_score() -> int:
	return _score


func set_score(value: int) -> void:
	_score = value
	print("score: ", _score)
	
	if _score > _high_score:
		set_high_score(_score)
	
	SignalManager.on_score_updated.emit()


func increment_score() -> void:
	set_score(_score + 1)


func get_high_score() -> int:
	return _high_score


func set_high_score(value: int) -> void:
	_high_score = value
	print("high score: ", _high_score)
