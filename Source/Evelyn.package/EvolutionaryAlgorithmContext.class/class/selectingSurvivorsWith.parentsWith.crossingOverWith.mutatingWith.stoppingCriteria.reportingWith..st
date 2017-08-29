instance creation
selectingSurvivorsWith: aSurvivorsSelectionStrategy parentsWith: aParentSelectionStrategy crossingOverWith: aCrossOverStrategy mutatingWith: aMutationStrategy stoppingCriteria: aStoppingCriteria reportingWith: aPluggableRecord
	^ self new
		initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy
		parentsWith: aParentSelectionStrategy
		crossingOverWith: aCrossOverStrategy
		mutatingWith: aMutationStrategy
		stoppingCriteria: aStoppingCriteria
		reportingWith: aPluggableRecord