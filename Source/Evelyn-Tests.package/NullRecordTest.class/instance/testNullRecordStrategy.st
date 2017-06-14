tests
testNullRecordStrategy
	| record |
	record := NullRecord new.
	self assert: record contents isEmpty.
	record record: (self generationOfTenIndividualsNumber: 1).
	self assert: record contents isEmpty