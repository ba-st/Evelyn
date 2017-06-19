tests
testDenyEquals
	| five six |
	five := NumericIndividual basedOn: 5.
	six := NumericIndividual basedOn: 6.
	
	self deny: (five = six)