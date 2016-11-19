processing - private
nextStateValueSumFrom: aState whenDoing: anAction

	^states inject: 0
		into: 
			[:sum :nextState |
			sum
				+ ((self transitionProbabilityFrom: aState to: nextState whenDoing: anAction)
						* (self valueOf: nextState))]