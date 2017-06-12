instance creation
selectingSurvivorsWith: aSurvivorsSelectionStrategy parentsWith: aParentSelectionStrategy crossingOverWith: aCrossOverStrategy mutatingWith: aMutationStrategy stoppingCriteria: aStoppingCriteria createGenerationWith: aGenerationBuilder numerOfTrials: aNumberOfTrials reportingWith: aPluggableRecord
	^ self new
		initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy
		parentsWith: aParentSelectionStrategy
		crossingOverWith: aCrossOverStrategy
		mutatingWith: aMutationStrategy
		stoppingCriteria: aStoppingCriteria
		createGenerationWith: aGenerationBuilder
		numerOfTrials: aNumberOfTrials
		reportingWith: aPluggableRecord