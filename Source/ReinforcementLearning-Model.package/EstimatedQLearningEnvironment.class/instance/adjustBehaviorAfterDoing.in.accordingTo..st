processing - private
adjustBehaviorAfterDoing: anAction in: aPreviousState accordingTo: updatedQuality

	| currentValue |
	currentValue := values at: aPreviousState ifAbsent: [updatedQuality].

	(currentValue <= updatedQuality or: [(policy at: aPreviousState) = anAction])
			ifTrue: 
				[values at: aPreviousState put: updatedQuality.
				policy at: aPreviousState put: anAction]