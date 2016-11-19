processing
adjustBehaviorAfterDoing: anAction in: aPreviousState receiving: aReinforcement endingIn: aNextState

	| experience |
	experience := ExperiencedTransition
				from: aPreviousState
				to: aNextState
				whenDoing: anAction
				reinforcedBy: aReinforcement.

	self adjustBehaviorAfter: experience.
	self process: experience