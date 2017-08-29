tests
experimentContext
	^ EvolutionaryAlgorithmContextBuilder new
		configureCrossOverStrategyTo: TravelingSalesmanCrossOverStrategy new;
		configureMutationStrategyTo: (TravelingSalesmanSwapMutationStrategy mutationRate: AlwaysTrue new andRandomized: self randomProvider generate: RoadMap);
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		build