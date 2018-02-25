tests
testRecord
	| numericIndividual |
	numericIndividual := 	NumericIndividual basedOn: 10.
	self assert: (NumericMapper new mapping: numericIndividual) equals: 'Record: NumericIndividual: 10 - #(0 0 0 0 0 0 1 0 1 0)'