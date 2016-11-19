accessing - private
reinforcementFor: anAgent

	^(prizeLocations at: (grid locationOf: anAgent)
		ifAbsent: [Prize rewarding: -1]) reward