processing
start

	| world time |
	world := Environment representedWith: (Grid ofSize: self worldSize).
	world place: agent at: startingLocation.
	world placePrizeAt: exitLocation rewarding: 10.
	mineLocations do: [:location | world placePrizeAt: location rewarding: -99].

	[(world inhabitantLocations at: agent) = exitLocation or: [numberOfMoves >= 1000]] whileFalse: 
			[numberOfMoves := numberOfMoves + 1.
			time := Time millisecondClockValue.
			world tick.
			processingTime := processingTime + Time millisecondClockValue - time]