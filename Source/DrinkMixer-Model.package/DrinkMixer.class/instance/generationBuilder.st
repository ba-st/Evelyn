accessing - private
generationBuilder

	^DefaultGeneticAlgorithmGenerationBuilder
		selectingSurvivorsWith: SurvivorsSelectionStrategy new
		parentsWith: ParentSelectionStrategy new
		crossingOverWith: MixedDrinkCrossOverStrategy new
		mutatingWith:
			(PluggableIndividualMutationStrategy creatingMutationsByMeansOf: MixedDrinkMutator)