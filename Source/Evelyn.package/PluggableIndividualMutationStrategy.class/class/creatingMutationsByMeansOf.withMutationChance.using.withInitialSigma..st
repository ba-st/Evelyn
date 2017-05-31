instance creation
creatingMutationsByMeansOf: aMutatorType
	withMutationChance: aNumberPi
	using: aRandomProviderType
	withInitialSigma: aNumberSigma

	^super new
		initializeCreatingMutationsByMeansOf: aMutatorType
		mutatingWithChance: aNumberPi
		using: aRandomProviderType
		withInitialSigma: aNumberSigma