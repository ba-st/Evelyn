tests
assert: lastestIndividuals areBetterOrEqualThan: statingIndividuals
	| latestBetter startingBetter sorted |
	latestBetter := (self selectionStrategy sortByFitness: lastestIndividuals) first.
	startingBetter := (self selectionStrategy sortByFitness: statingIndividuals) first.
	sorted := self selectionStrategy
		sortByFitness: (OrderedCollection with: startingBetter with: latestBetter).
	self
		assert: ((OrderedCollection with: latestBetter with: startingBetter) includes: sorted first)