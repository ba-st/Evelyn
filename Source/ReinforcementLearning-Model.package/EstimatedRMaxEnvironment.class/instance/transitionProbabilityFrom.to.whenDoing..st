accessing - private
transitionProbabilityFrom: aPreviousState to: aNextState whenDoing: anAction

	^(self considersAsUnknown: aPreviousState whenDoing: anAction)
		ifTrue: [aNextState = self optimistState ifTrue: [1] ifFalse: [0]]
		ifFalse: 
			[(transitions at: aPreviousState -> anAction -> aNextState)
				/ (actionsTaken at: aPreviousState -> anAction)]