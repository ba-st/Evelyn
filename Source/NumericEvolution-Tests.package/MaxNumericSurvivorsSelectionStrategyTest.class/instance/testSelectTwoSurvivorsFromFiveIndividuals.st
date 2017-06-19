tests
testSelectTwoSurvivorsFromFiveIndividuals

	| survivors numericIndividuals |

	numericIndividuals := OrderedCollection
		with: NumericFunctionResources five
		with: NumericFunctionResources four
		with: NumericFunctionResources three
		with: NumericFunctionResources two
		with: NumericFunctionResources one.

	survivors := strategy selectSurvivorsFrom: numericIndividuals.

	self
		assert: survivors size equals: 2;
		assert: (survivors at: 1) number equals: 5;
		assert: (survivors at: 2) number equals: 4.