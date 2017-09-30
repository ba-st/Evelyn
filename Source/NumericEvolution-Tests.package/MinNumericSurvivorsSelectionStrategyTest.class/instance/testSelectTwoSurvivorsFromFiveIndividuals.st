tests
testSelectTwoSurvivorsFromFiveIndividuals
	| survivors numericIndividuals |
	numericIndividuals := OrderedCollection
		with: NumericFunctionResources one
		with: NumericFunctionResources two
		with: NumericFunctionResources three
		with: NumericFunctionResources four
		with: NumericFunctionResources five.
	survivors := strategy selectSurvivorsFrom: numericIndividuals.
	self
		assert: survivors size equals: 2;
		assert: (survivors at: 1) number equals: 1;
		assert: (survivors at: 2) number equals: 2