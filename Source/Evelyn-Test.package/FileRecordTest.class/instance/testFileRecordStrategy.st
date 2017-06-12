tests
testFileRecordStrategy
	| record lines generation |
	record := FileRecord writeOn: self file mappingIndividualsBy: NumericMapper.
	self assert: record contents isEmpty.
	generation := self firstGenerationOf10Individuals.
	record record: generation.
	self assert: record contents notEmpty.
	lines := record contents lines.
	self
		assert: lines size equals: 12;
		assert: (lines at: 1) equals: 'Generation: 1';
		assert: (lines at: 12) isAllSeparators