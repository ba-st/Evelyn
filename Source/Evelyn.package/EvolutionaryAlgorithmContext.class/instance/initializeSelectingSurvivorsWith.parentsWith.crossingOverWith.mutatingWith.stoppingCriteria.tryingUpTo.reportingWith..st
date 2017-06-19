initialization
initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy parentsWith: aParentSelectionStrategy crossingOverWith: aCrossOverStrategy mutatingWith: aMutationStrategy stoppingCriteria: aStoppingCriteria tryingUpTo: aNumberOfTrials reportingWith: aPluggableRecord
	survivorSelectionStrategy := aSurvivorsSelectionStrategy.
	parentSelectionStrategy := aParentSelectionStrategy.
	crossOverStrategy := aCrossOverStrategy.
	mutationStrategy := aMutationStrategy.
	stoppingCriteria := aStoppingCriteria.
	numberOfTrials := aNumberOfTrials.
	currentGeneration := Binding undefinedExplainedBy: 'Please set the current generation.'.
	record := aPluggableRecord