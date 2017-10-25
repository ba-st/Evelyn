*NumericEvolution
forNumercialFunctions
	^ self new
		configureCrossOverStrategyTo: NumericCrossOverStrategy new;
		configureMutationStrategyTo:
			(FlipMutationStrategy
				generating: NumericIndividual
				applying: NumericMutator new
				with: CoinFlippingProbability new
				randomizedUsing: (NormalDistributionRandomProvider definedMu: 0 andSigma: 1));
		yourself