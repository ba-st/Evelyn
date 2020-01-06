Extension { #name : #EvolutionaryAlgorithmContextBuilder }

{ #category : #'*NumericEvolution' }
EvolutionaryAlgorithmContextBuilder class >> forNumercialFunctions [
	^ self new
		configureCrossOverStrategyTo: NumericCrossOverStrategy new;
		configureMutationStrategyTo:
			(CoinFlipMutationStrategy
				generating: NumericIndividual
				applying: NumericMutator new
				with: (PercentageProbability of: 50)
				randomizedUsing: (NormalDistributionRandomProvider definedMu: 0 andSigma: 1));
		yourself
]
