evaluating
untilStoppingCriteriaIsMetDo: block workingOn: aContext
	[ self isSatisfiedBy: aContext currentGeneration ] whileFalse: block