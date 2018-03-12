tests
testHash
	self
		assert: (NumericIndividual basedOn: 5) hash equals: 138787777;
		assert: (NumericIndividual basedOn: 5) hash equals: (NumericIndividual basedOn: 5) hash;
		assert: (NumericIndividual basedOn: 51) hash equals: 252639050