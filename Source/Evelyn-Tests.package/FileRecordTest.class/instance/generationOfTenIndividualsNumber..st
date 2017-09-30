accessing
generationOfTenIndividualsNumber: aNumber
	^ EvolutionaryAlgorithmGeneration
		number: aNumber
		composedOf: self generateStartingIndividuals