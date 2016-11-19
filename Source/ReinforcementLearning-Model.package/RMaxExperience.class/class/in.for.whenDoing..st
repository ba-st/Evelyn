instance creation
in: anEstimatedEnvironment for: aState whenDoing: anAction

	^self new
		initializeIn: anEstimatedEnvironment
		for: aState
		whenDoing: anAction