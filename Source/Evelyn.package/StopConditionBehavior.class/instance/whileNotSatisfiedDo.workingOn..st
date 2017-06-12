evaluating
whileNotSatisfiedDo: block workingOn: aContext
	
	[ self isSatisfiedBy: aContext currentGeneration ]
		whileFalse: block