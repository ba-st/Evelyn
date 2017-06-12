instance creation
selectingSurvivorsWith: aSurvivorsSelectionStrategy parentsWith: aParentSelectionStrategy crossingOverWith: aCrossOverStrategy mutatingWith: aMutationStrategy stoppingCriteria: aStoppingCriteria createGenerationWith: aGenerationBuilder
	^ self new
		initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy
		parentsWith: aParentSelectionStrategy
		crossingOverWith: aCrossOverStrategy
		mutatingWith: aMutationStrategy
		stoppingCriteria: aStoppingCriteria
		createGenerationWith: aGenerationBuilder
		numerOfTrials: self defaultNumberOfTrials
		reportingWith: self defaultReporting