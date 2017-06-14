initialization
initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy parentsWith: aParentSelectionStrategy crossingOverWith: aCrossOverStrategy mutatingWith: aMutationStrategy stoppingCriteria: aStoppingCriteria createGenerationWith: aGenerationBuilder numerOfTrials: aNumberOfTrials reportingWith: aPluggableRecord

	survivorSelectionStrategy := aSurvivorsSelectionStrategy.
	parentSelectionStrategy := aParentSelectionStrategy.
	crossOverStrategy := aCrossOverStrategy.
	mutationStrategy := aMutationStrategy.
	stoppingCriteria := aStoppingCriteria.
	generationBuilder := aGenerationBuilder.
	numberOfTrials := aNumberOfTrials.
	currentGeneration := Binding undefinedExplainedBy: 'Please set the current generation.'.
	record := aPluggableRecord