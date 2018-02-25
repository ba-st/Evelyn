accessing
experimentContext
	^ EvolutionaryAlgorithmContextBuilder new
		configureCrossOverStrategyTo: TravelingSalesmanCrossOverStrategy new;
		configureMutationStrategyTo:
			(SwapMutationStrategy
				generating: RoadMap
				with: (PercentageProbability of: 100)
				randomizedUsing: self randomProvider);
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		build