initialize-release
initializeFrom: aPreviousState to: aNextState whenDoing: anAction reinforcedBy: aReinforcement

	previousState := aPreviousState.
	nextState := aNextState.
	action := anAction.
	reinforcement := aReinforcement