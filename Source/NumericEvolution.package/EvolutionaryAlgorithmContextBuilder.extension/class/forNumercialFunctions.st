*NumericEvolution
forNumercialFunctions
	^ self new
		configureCrossOverStrategyTo: NumericCrossOverStrategy new;
		configureMutationStrategyTo:
			(FlipMutationStrategy
				generating: NumericIndividual
				applying: NumericMutator new
				with: (PercentageProbability of: 50)
				randomizedUsing: (NormalDistributionRandomProvider definedMu: 0 andSigma: 1));
		yourself