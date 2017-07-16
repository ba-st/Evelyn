instance creation
mutationRate: aProbabilityChance andRandomized: aRandomProvider generate: anIndividualClass mutationDefindedBy: aMutator
	^ self new
		initializeMutationRate: aProbabilityChance
		andRandomized: aRandomProvider
		generate: anIndividualClass
		mutationDefindedBy: aMutator