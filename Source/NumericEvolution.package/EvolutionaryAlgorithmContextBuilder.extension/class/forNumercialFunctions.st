*NumericEvolution
forNumercialFunctions
	^ self new
		configureCrossOverStrategyTo: NumericCrossOverStrategy new;
		configureMutationStrategyTo:
			(FlipMutationStrategy
				mutationRate: CoinFlippingProbability new
				andRandomized: NormalDistributionRandomProvider new
				generate: NumericIndividual
				mutationDefindedBy: NumericMutator new);
		yourself