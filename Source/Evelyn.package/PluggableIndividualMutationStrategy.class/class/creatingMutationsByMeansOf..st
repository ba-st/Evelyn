instance creation
creatingMutationsByMeansOf: aMutatorType
	^ self
		creatingMutationsByMeansOf: aMutatorType
		withMutationChance: self defaultPi
		using: self defaultRandomProviderType
		withInitialSigma: self defaultInitialSigma