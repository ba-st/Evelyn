tests
testGenotypeWithNumberBasedOnEightySeven
	| individual binaryOfEightySeven |
	individual := NumericIndividual basedOn: 87.
	binaryOfEightySeven := OrderedCollection withAll: #(0 0 0 1 0 1 0 1 1 1).
	self assert: individual genotype equals: binaryOfEightySeven