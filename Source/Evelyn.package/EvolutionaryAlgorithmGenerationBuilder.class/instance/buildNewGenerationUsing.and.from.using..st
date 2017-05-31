instance creation
buildNewGenerationUsing: mutatedChildren and: survivors from: oldGeneration using: context

	^ EvolutionaryAlgorithmGeneration
		number: oldGeneration number + 1
		composedOf: (context sortByFitness: survivors , mutatedChildren)