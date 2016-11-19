processing
adjustBehaviorAfterDoing: anAction in: aPreviousState receiving: aReinforcement endingIn: aNextState

	(reinforcements at: aPreviousState -> anAction) consider: aReinforcement.
	self increase: actionsTaken at: aPreviousState -> anAction.
	self increase: transitions at: aPreviousState -> anAction -> aNextState.

	self adjustEstimatedValues