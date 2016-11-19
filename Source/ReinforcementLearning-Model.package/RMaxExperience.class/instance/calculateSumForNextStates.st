processing - private
calculateSumForNextStates

	| sum |
	sum := 0.
	transitions keysAndValuesDo: 
			[:nextState :numberOfTransitions |
			sum := sum + (numberOfTransitions / attempts
								* (environment estimatedValueFor: nextState))].
	^sum