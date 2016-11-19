accessing
nolfiEvolutionParameters

	^ EvolutionParameters new
		actionsPerGeneration: 5000;
		actionsTillRefill: 50;
		generations: 100;
		mutations: 5;
		offspringPerWinner: 5;
		winnersPerGeneration: 20;
		yourself