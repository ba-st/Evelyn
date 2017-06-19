sorting
sortByFitness: aCollectionOfIndividuals 
	
	^ (aCollectionOfIndividuals asSortedCollection: [ :a :b | a number >= b number ]) asArray