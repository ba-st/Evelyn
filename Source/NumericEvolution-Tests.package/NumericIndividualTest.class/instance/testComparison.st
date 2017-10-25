tests
testComparison
	| individualBasedOnNumberFive individualBasedOnNumberSix anotherIndividualBasedOnNumberFive anotherIndividualBasedOnNumberSix |
	individualBasedOnNumberFive := NumericIndividual basedOn: 5.
	anotherIndividualBasedOnNumberFive := NumericIndividual basedOn: 5.
	individualBasedOnNumberSix := NumericIndividual basedOn: 6.
	anotherIndividualBasedOnNumberSix := NumericIndividual basedOn: 6.
	self assert: individualBasedOnNumberFive equals: individualBasedOnNumberFive.
	self assert: individualBasedOnNumberFive equals: anotherIndividualBasedOnNumberFive.
	self assert: individualBasedOnNumberSix equals: individualBasedOnNumberSix.
	self assert: individualBasedOnNumberSix equals: anotherIndividualBasedOnNumberSix.
	self deny: individualBasedOnNumberFive = individualBasedOnNumberSix.
	self deny: individualBasedOnNumberSix = individualBasedOnNumberFive