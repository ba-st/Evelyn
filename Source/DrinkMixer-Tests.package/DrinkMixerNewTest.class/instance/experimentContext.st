accessing
experimentContext
	^ EvolutionaryAlgorithmContextBuilder new
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		configureCrossOverStrategyTo: MixedDrinkCrossOverStrategy new;
		configureMutatorTo: MixedDrinkMutator;
		configureStoppingCriteriaTo: (GenerationNumberStoppingCriteria stoppingAfter: 50);
		build