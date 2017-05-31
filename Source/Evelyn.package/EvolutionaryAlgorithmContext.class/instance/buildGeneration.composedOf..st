generation builder
buildGeneration: number composedOf: individuals

	^ generationBuilder buildGeneration: number composedOf: (self sortByFitness: individuals)