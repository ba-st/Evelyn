tests
testAssertEquals
	| individualBasedOnNumberFive anotherIndividualBasedOnNumberFive |
	individualBasedOnNumberFive := NumericIndividual basedOn: 5.
	anotherIndividualBasedOnNumberFive := NumericIndividual basedOn: 5.
	self assert: individualBasedOnNumberFive equals: anotherIndividualBasedOnNumberFive