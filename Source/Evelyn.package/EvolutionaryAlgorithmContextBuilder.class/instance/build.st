building
build
	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: survivorsSelectionStrategy content
		parentsWith: parentSelectionStrategy
		crossingOverWith: crossOverStrategy content
		mutatingWith: (PluggableIndividualMutationStrategy creatingMutationsByMeansOf: mutator content)
		stoppingCriteria: stoppingCriteria
		createGenerationWith: evolutionaryAlgorithmGenerationBuilder
		numerOfTrials: numberOfTrials
		reportingWith: record