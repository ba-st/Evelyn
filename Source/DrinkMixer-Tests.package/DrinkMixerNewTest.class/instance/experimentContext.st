accessing
experimentContext
	^ EvolutionaryAlgorithmContextBuilder new
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		configureCrossOverStrategyTo: MixedDrinkCrossOverStrategy new;
		configureMutationStrategyTo:
			(PluggableIndividualMutationStrategy
				creatingMutationsByMeansOf: MixedDrinkMutator);
		configureStoppingCriteriaTo: (GenerationNumberStoppingCriteria stoppingAfter: 50);
		build