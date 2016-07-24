building - private
generationAfter: aGeneration composedOf: anIndivudalCollection

	^ContextAwareGeneticAlgorithmGeneration
		number: aGeneration number + 1
		composedOf: anIndivudalCollection
		in: aGeneration context