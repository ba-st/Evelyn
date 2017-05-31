sorting
sortByFitness: aCollectionOfIndividuals

	^ (aCollectionOfIndividuals
		asSortedCollection:
			[ :a :b | (self survivalCapacityOf: a) >= (self survivalCapacityOf: b) ])
		asArray