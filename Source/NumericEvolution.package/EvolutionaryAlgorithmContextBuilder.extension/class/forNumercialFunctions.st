*NumericEvolution
forNumercialFunctions
	^ self new
		configureCrossOverStrategyTo: NumericCrossOverStrategy new;
		configureMutationStrategyTo:
			(FlipMutationStrategy
				mutationRate: AlwaysTrue new
				andRandomized: RandomProvider new
				generate: NumericIndividual
				mutationDefindedBy: NumericMutator new);
		yourself