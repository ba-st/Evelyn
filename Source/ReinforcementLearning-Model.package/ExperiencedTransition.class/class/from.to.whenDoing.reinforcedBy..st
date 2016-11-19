instance creation
from: aPreviousState to: aNextState whenDoing: anAction reinforcedBy: aReinforcement

	^self new
		initializeFrom: aPreviousState
		to: aNextState
		whenDoing: anAction
		reinforcedBy: aReinforcement