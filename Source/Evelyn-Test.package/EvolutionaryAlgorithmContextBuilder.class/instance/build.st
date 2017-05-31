building
build

	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: survivorsSelectionStrategy content
		parentsWith: parentSelectionStrategy content
		crossingOverWith: crossOverStrategy content
		mutatingWith: (PluggableIndividualMutationStrategy creatingMutationsByMeansOf: mutator content)
		stoppingCriteria: stoppingCriteria content
		createGenerationWith: evolutionaryAlgorithmGenerationBuilder content