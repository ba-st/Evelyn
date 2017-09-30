tests
testGenotype
	| individual binaryOfTen |
	individual := NumericIndividual basedOn: 10.
	binaryOfTen := OrderedCollection withAll: #(0 0 0 0 0 0 1 0 1 0).
	self assert: individual genotype equals: binaryOfTen