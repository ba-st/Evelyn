tests
testNullRecordStrategy
	| record |
	record := NullRecord new.
	self assert: record contents isEmpty.
	record record: self firstGenerationOf10Individuals.
	self assert: record contents isEmpty