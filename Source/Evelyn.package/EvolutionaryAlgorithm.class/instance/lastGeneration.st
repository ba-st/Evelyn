accessing
lastGeneration
	context changeCurrentGenerationTo: self generateFirstGeneration.
	context
		untilStoppingCriteriaIsMetDo: [ context recordCurrentGeneration.
			context changeCurrentGenerationTo: self nextGeneration ].
	context recordCurrentGeneration.
	^ context currentGeneration