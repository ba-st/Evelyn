accessing
experimentContext
	^ EvolutionaryAlgorithmContextBuilder new
		configureCrossOverStrategyTo: TravelingSalesmanCrossOverStrategy new;
		configureMutationStrategyTo:
			(TravelingSalesmanSwapMutationStrategy
				generating: RoadMap
				with: AlwaysTrue new
				randomizedUsing: self randomProvider);
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		build