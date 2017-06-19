accessing
lastGeneration
	context changeCurrentGenerationTo: self generateFirstGenerartion.
	context
		untilStoppingCriteriaIsMetDo: [ context recordCurrentGeneration.
			context changeCurrentGenerationTo: (self nextGenerationBasedOn: context currentGeneration) ].
	context recordCurrentGeneration.
	^ context currentGeneration