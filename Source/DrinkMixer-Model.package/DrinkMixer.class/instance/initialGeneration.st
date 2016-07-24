initialize - release
initialGeneration

	^ContextAwareGeneticAlgorithmGeneration
		number: 1
		composedOf: (self initialProposalsFor: components)
		in: (
			DefaultGeneticAlgorithmContext
				computingFitnessWith: (MixedDrinkFitness workingWith: self))