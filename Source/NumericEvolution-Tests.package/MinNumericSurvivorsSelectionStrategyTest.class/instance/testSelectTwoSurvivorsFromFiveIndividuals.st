tests
testSelectTwoSurvivorsFromFiveIndividuals
	| survivors numericIndividuals numericalIndividualFactory |
	numericalIndividualFactory := NumericIndividualFactory new.
	numericIndividuals := OrderedCollection
		with: numericalIndividualFactory one
		with: numericalIndividualFactory two
		with: numericalIndividualFactory three
		with: numericalIndividualFactory four
		with: numericalIndividualFactory five.
	survivors := strategy selectSurvivorsFrom: numericIndividuals.
	self
		assert: survivors size equals: 2;
		assert: (survivors at: 1) number equals: 1;
		assert: (survivors at: 2) number equals: 2