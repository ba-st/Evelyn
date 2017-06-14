tests
assert: lastestIndividuals areBetterThan: statingIndividuals 		
	
	|latestBetter startingBetter sorted|
	latestBetter := (self sortByFitness: lastestIndividuals) first.
	startingBetter := (self sortByFitness: statingIndividuals) first.
	
	sorted := self sortByFitness: (OrderedCollection with: startingBetter with: latestBetter).
	
	self assert: sorted first equals: latestBetter.