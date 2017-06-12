tests
experimentContext

	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: MinNumericSurvivorsSelectionStrategy new
		parentsWith: ParentSelectionStrategy new
		crossingOverWith: NumericCrossOverStrategy new
		mutatingWith: (PluggableIndividualMutationStrategy creatingMutationsByMeansOf: NumericMutator)
		stoppingCriteria: (PluggableStoppingCriteria analyzingGenerationWith: (AgingStopCondition stopAtGenerationNumber: 100))
		createGenerationWith: EvolutionaryAlgorithmGenerationBuilder new
		numerOfTrials: 1
		reportingWith: RecordProvider nullRecord
