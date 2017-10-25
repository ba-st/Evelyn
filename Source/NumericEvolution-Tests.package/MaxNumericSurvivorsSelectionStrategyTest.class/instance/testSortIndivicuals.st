tests
testSortIndivicuals
	| sortedIndividuals numericIndividuals numericalIndividualFactory |
	numericalIndividualFactory := NumericalIndividualFactory new.
	numericIndividuals := OrderedCollection
		with: numericalIndividualFactory three
		with: numericalIndividualFactory two
		with: numericalIndividualFactory five
		with: numericalIndividualFactory four.
	sortedIndividuals := strategy sortByFitness: numericIndividuals.
	self
		assert: (sortedIndividuals at: 1) number equals: 5;
		assert: (sortedIndividuals at: 2) number equals: 4;
		assert: (sortedIndividuals at: 3) number equals: 3;
		assert: (sortedIndividuals at: 4) number equals: 2