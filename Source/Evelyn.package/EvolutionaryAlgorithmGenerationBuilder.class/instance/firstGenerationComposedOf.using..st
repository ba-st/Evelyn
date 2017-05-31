accessing
firstGenerationComposedOf: startGeneration 	using: context

	^ EvolutionaryAlgorithmGeneration number: 1 composedOf: (context sortByFitness: startGeneration)