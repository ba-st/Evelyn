evaluating
whileNotSatisfiedDo: aBlock
	self stoppingCriteria
		whileNotSatisfiedDo: aBlock
		workingOn: self