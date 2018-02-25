accessing
mutationStrategy
	^ FlipMutationStrategy
		generating: NumericIndividual
		applying: NumericMutator new
		with: (PercentageProbability of: 50)
		randomizedUsing: (NormalDistributionRandomProvider definedMu: 0 andSigma: 1)