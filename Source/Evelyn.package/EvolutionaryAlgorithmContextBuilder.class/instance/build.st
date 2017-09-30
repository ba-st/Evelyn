building
build
	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: survivorsSelectionStrategyBinding content
		parentsWith: parentSelectionStrategy
		crossingOverWith: crossOverStrategyBinding content
		mutatingWith: mutationStrategy content
		stoppingCriteria: stoppingCriteria
		reportingWith: record