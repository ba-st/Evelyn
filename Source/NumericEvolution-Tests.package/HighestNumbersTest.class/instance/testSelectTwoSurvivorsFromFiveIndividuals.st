test selection
testSelectTwoSurvivorsFromFiveIndividuals

	| survivors numericIndividuals numericalIndividualFactory |

	numericalIndividualFactory := NumericIndividualFactory new.
	numericIndividuals := OrderedCollection
		with: numericalIndividualFactory five
		with: numericalIndividualFactory four
		with: numericalIndividualFactory three
		with: numericalIndividualFactory two
		with: numericalIndividualFactory one.
	survivors := self selectionStrategy selectSurvivorsFrom: numericIndividuals.
	self
		assert: survivors size equals: 2;
		assert: (survivors at: 1) number equals: 5;
		assert: (survivors at: 2) number equals: 4