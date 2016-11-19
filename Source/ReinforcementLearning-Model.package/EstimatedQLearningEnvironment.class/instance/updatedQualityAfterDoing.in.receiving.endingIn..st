accessing - private
updatedQualityAfterDoing: anAction in: aPreviousState receiving: aReinforcement endingIn: aNextState

	| currentQuality maximumNextStateQuality |
	currentQuality := (qualities at: aPreviousState) at: anAction.
	maximumNextStateQuality := self maximumQualityFor: aNextState.

	^currentQuality + (learningRate
				* (aReinforcement + (discountRate * maximumNextStateQuality) - currentQuality))