building
build
	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: survivorsSelectionStrategy content
		parentsWith: parentSelectionStrategy
		crossingOverWith: crossOverStrategy content
		mutatingWith: mutationStrategy content
		stoppingCriteria: stoppingCriteria
		reportingWith: record