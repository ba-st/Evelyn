processing - private
adjustBehaviorAfter: anExperience accordingTo: updatedQuality

	| currentValue |
	currentValue := values at: anExperience previousState ifAbsent: [updatedQuality].

	(currentValue <= updatedQuality or: [(policy at: anExperience previousState) = anExperience action])
			ifTrue: 
				[values at: anExperience previousState put: updatedQuality.
				policy at: anExperience previousState put: anExperience action]