accessing - private
updatedQualityAfter: anExperience

	| currentQuality maximumNextStateQuality |
	currentQuality := (qualities at: anExperience previousState)
				at: anExperience action.
	maximumNextStateQuality := self maximumQualityFor: anExperience nextState.

	^currentQuality + (learningRate
				* (anExperience reinforcement + (discountRate * maximumNextStateQuality)
						- currentQuality))