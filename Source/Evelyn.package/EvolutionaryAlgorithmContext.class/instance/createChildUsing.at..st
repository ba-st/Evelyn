fitness
createChildUsing: aCollectionOfIndividuals at: anIndex
	^ crossOverStrategy
		cross: (aCollectionOfIndividuals at: anIndex * 2 - 1)
		overWith: (aCollectionOfIndividuals at: anIndex * 2)