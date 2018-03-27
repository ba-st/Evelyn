accessing
context

	^ EvolutionaryAlgorithmContextBuilder forNumercialFunctions
		configureSurvivorsSelectionStrategyTo: (HighestNumbersSelection surviving: 40 / 100);
		build