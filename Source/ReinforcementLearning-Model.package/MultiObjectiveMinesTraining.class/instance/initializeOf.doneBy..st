initialize-release
initializeOf: anAgent doneBy: aTrainer

	agent := anAgent.
	trainer := aTrainer.
	numberOfMoves := 0.
	startingLocation := trainer worldMiddle.
	objectives := (OrderedCollection new)
				add: 1 @ 1;
				add: 1 @ self worldSize;
				add: self worldSize @ 1;
				add: self worldSize @ self worldSize;
				yourself.
	processingTime := 0.
	self initializeMineLocations