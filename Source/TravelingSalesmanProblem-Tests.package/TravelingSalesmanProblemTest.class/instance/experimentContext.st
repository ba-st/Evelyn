accessing
experimentContext
	^ EvolutionaryAlgorithmContextBuilder new
		configureCrossOverStrategyTo: TravelingSalesmanCrossOverStrategy new;
		configureMutationStrategyTo:
			(SwapMutationStrategy
				generating: RoadMap
				with: AlwaysTrue new
				randomizedUsing: self randomProvider);
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		build