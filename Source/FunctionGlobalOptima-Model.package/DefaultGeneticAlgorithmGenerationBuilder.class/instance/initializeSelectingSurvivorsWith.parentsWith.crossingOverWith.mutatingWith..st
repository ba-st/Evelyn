initialize - release
initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy
	parentsWith: aParentSelectionStrategy
	crossingOverWith: aCrossOverStrategy
	mutatingWith: aMutationStrategy

	survivorsSelectionStrategy := aSurvivorsSelectionStrategy.
	parentSelectionStrategy := aParentSelectionStrategy.
	crossOverStrategy := aCrossOverStrategy.
	mutationStrategy := aMutationStrategy