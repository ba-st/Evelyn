accessing
experimentContext

	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: (DrinkMixerSurvivorsSelectionStrategy workingWith: self drinkMixer)
		parentsWith: ParentSelectionStrategy new
		crossingOverWith: MixedDrinkCrossOverStrategy new
		mutatingWith: (PluggableIndividualMutationStrategy creatingMutationsByMeansOf: MixedDrinkMutator)
		stoppingCriteria: [ :aGeneration | aGeneration number > 100 ]
		createGenerationWith: EvolutionaryAlgorithmGenerationBuilder new