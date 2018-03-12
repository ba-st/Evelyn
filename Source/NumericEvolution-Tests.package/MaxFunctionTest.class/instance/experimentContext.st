private - accessing
experimentContext
	^ EvolutionaryAlgorithmContextBuilder forNumercialFunctions
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		build