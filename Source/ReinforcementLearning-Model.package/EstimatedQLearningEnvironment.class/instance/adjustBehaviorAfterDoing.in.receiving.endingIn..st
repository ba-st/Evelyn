processing
adjustBehaviorAfterDoing: anAction in: aPreviousState receiving: aReinforcement endingIn: aNextState

	| updatedQuality |

	updatedQuality := 
		self updatedQualityAfterDoing: anAction in: aPreviousState receiving: aReinforcement endingIn: aNextState.
	(qualities at: aPreviousState) at: anAction put: updatedQuality.

 	self adjustBehaviorAfterDoing: anAction in: aPreviousState accordingTo: updatedQuality