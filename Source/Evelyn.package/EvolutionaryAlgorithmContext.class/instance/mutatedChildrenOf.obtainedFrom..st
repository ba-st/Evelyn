fitness
mutatedChildrenOf: aGeneration obtainedFrom: aCollectionOfIndividuals
	^ mutationStrategy
		onGeneration: aGeneration number
		mutate: aCollectionOfIndividuals