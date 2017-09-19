accessing
lastGeneration
	context changeCurrentGenerationTo: self generateFirstGenerartion.
	context
		untilStoppingCriteriaIsMetDo: [ context recordCurrentGeneration.
			context changeCurrentGenerationTo: self nextGeneration ].
	context recordCurrentGeneration.
	^ context currentGeneration