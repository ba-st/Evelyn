tests
testSortIndivicuals

	| sortedIndividuals numericIndividuals |

	numericIndividuals := OrderedCollection
		with: NumericFunctionResources three
		with: NumericFunctionResources two
		with: NumericFunctionResources five
		with: NumericFunctionResources four.

	sortedIndividuals := strategy sortByFitness: numericIndividuals.

	self
		assert: (sortedIndividuals at: 1) number equals: 5;
		assert: (sortedIndividuals at: 2) number equals: 4;
		assert: (sortedIndividuals at: 3) number equals: 3;
		assert: (sortedIndividuals at: 4) number equals: 2