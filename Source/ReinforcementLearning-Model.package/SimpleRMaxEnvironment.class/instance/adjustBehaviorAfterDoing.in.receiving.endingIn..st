processing
adjustBehaviorAfterDoing: anAction in: aPreviousState receiving: aReinforcement endingIn: aNextState

	((experiencies at: aPreviousState) at: anAction)
		registerTransitionTo: aNextState
		reinforcedBy: aReinforcement.

	self adjustPolicy