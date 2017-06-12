tests
testNullRecordStrategy
	| record |
	record := RecordProvider nullRecord.
	self assert: record contents isEmpty.
	record record: self firstGenerationOf10Individuals.
	self assert: record contents isEmpty