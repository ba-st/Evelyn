initialize-release
initializeOf: anAgent doneBy: aTrainer

	agent := anAgent.
	trainer := aTrainer.
	numberOfMoves := 0.
	startingLocation := 1 @ 1.
	exitLocation := self worldSize @ 1.
	processingTime := 0