evaluate
whileNotSatisfiedDo: block workingOn: aContext
	
	[ criteria isSatisfiedBy: aContext currentGeneration ]
		whileFalse: block