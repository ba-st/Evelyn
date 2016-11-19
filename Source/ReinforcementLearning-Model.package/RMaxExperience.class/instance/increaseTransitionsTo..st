processing - private
increaseTransitionsTo: aState

	| currentTransitions |
	currentTransitions := transitions at: aState ifAbsent: [0].

	transitions at: aState put: currentTransitions + 1