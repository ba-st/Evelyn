tests
experimentContext

	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: MaxNumericSurvivorsSelectionStrategy new
		parentsWith: ParentSelectionStrategy new
		crossingOverWith: NumericCrossOverStrategy new
		mutatingWith: (PluggableIndividualMutationStrategy creatingMutationsByMeansOf: NumericMutator)
		stoppingCriteria: (PluggableStoppingCriteria analyzingGenerationWith: (AgingStopCondition stopAtGenerationNumber: 100) )
		createGenerationWith: EvolutionaryAlgorithmGenerationBuilder new