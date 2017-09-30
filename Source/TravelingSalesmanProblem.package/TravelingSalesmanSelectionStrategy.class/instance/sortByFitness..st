sorting
sortByFitness: aCollectionOfIndividuals
	^ aCollectionOfIndividuals sort: [ :anIndividual :anotherIndividual | (self calculateDistance: anIndividual) < (self calculateDistance: anotherIndividual) ]