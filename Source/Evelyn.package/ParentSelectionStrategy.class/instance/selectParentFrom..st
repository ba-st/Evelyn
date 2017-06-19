selecting - private
selectParentFrom: aCollectionOfIndividuals
	^ aCollectionOfIndividuals at: (randomProvider random * aCollectionOfIndividuals size) ceiling