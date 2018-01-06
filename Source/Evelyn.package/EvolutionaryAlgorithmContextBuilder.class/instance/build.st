building
build
	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: survivorsSelectionStrategyBinding content
		parentsWith: parentSelectionStrategy
		crossingOverWith: crossOverStrategyBinding content
		mutatingWith: mutatorBinding content
		stoppingCriteria: stoppingCriteria
		reportingWith: record