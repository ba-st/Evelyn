accessing - private
simpleExperimentParameters

	| evolutionParameters |

	evolutionParameters := EvolutionParameters new
		actionsPerGeneration: 100;
		actionsTillRefill: 50;
		generations: 50;
		mutations: 5;
		offspringPerWinner: 5;
		winnersPerGeneration: 20;
		yourself.
	^ ExperimentParameters new
		initialPopulationSize: 100;
		evolutions: 1;
		evolutionParameters: evolutionParameters;
		yourself