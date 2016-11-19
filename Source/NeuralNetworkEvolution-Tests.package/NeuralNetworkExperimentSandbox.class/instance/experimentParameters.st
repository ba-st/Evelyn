accessing - private
experimentParameters

	| evolutionParameters |

	evolutionParameters := EvolutionParameters new
		actionsPerGeneration: 5000;
		actionsTillRefill: 50;
		generations: 100;
		mutations: 5;
		offspringPerWinner: 5;
		winnersPerGeneration: 20;
		yourself.
	^ ExperimentParameters new
		initialPopulationSize: 100;
		evolutions: 5;
		evolutionParameters: evolutionParameters;
		yourself