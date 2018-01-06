accessing
mutationStrategy
	^ FlipMutationStrategy
		generating: NumericIndividual
		applying: NumericMutator new
		with: CoinFlippingProbability new
		randomizedUsing: (NormalDistributionRandomProvider definedMu: 0 andSigma: 1)