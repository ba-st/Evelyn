generation builder
buildGeneration: number composedOf: individuals
	^ EvolutionaryAlgorithmGeneration number: number composedOf: (survivorSelectionStrategy sortByFitness: individuals)