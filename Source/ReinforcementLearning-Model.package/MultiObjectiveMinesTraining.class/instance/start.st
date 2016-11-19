processing
start

	| world time |
	world := EnvironmentWithTargets
				affecting: (Environment representedWith: (Grid ofSize: self worldSize)).
	world place: agent at: startingLocation.
	objectives do: [:location | world placePrizeAt: location rewarding: 10].
	mineLocations do: [:location | world placePrizeAt: location rewarding: -99].

	[objectives isEmpty or: [numberOfMoves >= 1000]] whileFalse: 
			[numberOfMoves := numberOfMoves + 1.
			time := Time millisecondClockValue.
			world tick.
			processingTime := processingTime + Time millisecondClockValue - time.
			self updateObjectivesIn: world]