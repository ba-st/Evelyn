testing - private
considersAsUnknown: aState whenDoing: anAction

	^(actionsTaken at: aState -> anAction) < actionsRequiredToKnow