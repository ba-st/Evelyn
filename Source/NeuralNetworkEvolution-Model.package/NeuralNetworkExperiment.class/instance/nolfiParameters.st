accessing
nolfiParameters

	^ ExperimentParameters new
		initialPopulationSize: 100;
		evolutions: 10;
		evolutionParameters: self nolfiEvolutionParameters;
		yourself