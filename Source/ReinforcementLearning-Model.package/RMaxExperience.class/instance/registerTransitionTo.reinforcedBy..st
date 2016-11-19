processing
registerTransitionTo: aState reinforcedBy: aReinforcement

	self increaseTransitionsTo: aState.
	attempts := attempts + 1.
	reinforcement consider: aReinforcement