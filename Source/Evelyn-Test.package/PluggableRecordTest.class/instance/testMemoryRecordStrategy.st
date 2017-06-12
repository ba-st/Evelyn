tests
testMemoryRecordStrategy
	| record lines generation |
	record := RecordProvider memoryRecordMappingIndividualsBy: NumericMapper.
	self assert: record contents isEmpty.
	generation := self firstGenerationOf10Individuals.
	record record: generation.
	self assert: record contents notEmpty.
	lines := record contents.
	self
		assert: lines size equals: 1;
		assert: (lines at: 1) individualsRecords size equals: 10