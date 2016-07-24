instance creation
selectingSurvivorsWith: aSurvivorsSelectionStrategy
	parentsWith: aParentSelectionStrategy
	crossingOverWith: aCrossOverStrategy
	mutatingWith: aMutationStrategy

	^self new
		initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy
		parentsWith: aParentSelectionStrategy
		crossingOverWith: aCrossOverStrategy
		mutatingWith: aMutationStrategy