sorting
sortByFitness: aCollectionOfIndividuals

	^ aCollectionOfIndividuals sort: [ :anIndividual :anotherIndividual | (self distanceTraveledBy: anIndividual) < (self distanceTraveledBy: anotherIndividual) ]