processing
start

	| world time agentLocation |

	world := WindEnvironment
		affecting: (Environment representedWith: (Grid ofSize: self worldSize))
		accordingTo: trainer randomNumberProvider.
	world place: agent at: startingLocation.
	world placePrizeAt: exitLocation rewarding: 10.

	WindTrainingLog restartWithSize: self worldSize andExitAt: exitLocation.

	[ agentLocation := world inhabitantLocations at: agent.
	agentLocation = exitLocation or: [ numberOfMoves >= 1000 ] ]
		whileFalse: [ WindTrainingLog current recordAgentAt: agentLocation.

			numberOfMoves := numberOfMoves + 1.
			time := Time millisecondClockValue.
			world tick.
			processingTime := processingTime + Time millisecondClockValue - time ].

	WindTrainingLog current recordAgentAt: agentLocation