accessing - private
experimentParameters

	| evolutionParameters |

	evolutionParameters := EvolutionParameters new
		actionsPerGeneration: actionsPerGenerationView contents;
		actionsTillRefill: 25;
		generations: generationsView contents;
		mutations: 10;
		offspringPerWinner: offspringPerWinnerView contents;
		winnersPerGeneration: winnersPerGenerationView contents;
		yourself.
	^ ExperimentParameters new
		initialPopulationSize: offspringPerWinnerView contents * winnersPerGenerationView contents;
		evolutions: 1;
		evolutionParameters: evolutionParameters;
		yourself