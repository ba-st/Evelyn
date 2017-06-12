accessing
lastGeneration
	context currentGenerationChangeTo: self generateFirstGenerartion.
	context
		whileNotSatisfiedDo: [ context recordCurrentGeneration.
			context currentGenerationChangeTo: (self nextGenerationBasedOn: context currentGeneration) ].
	context recordCurrentGeneration.
	^ context currentGeneration