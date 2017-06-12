tests
testFileRecordStrategyRecordingTwoGeneration
	| record lines |
	record := FileRecord writeOn: self file mappingIndividualsBy: NumericMapper.
	self assert: record contents isEmpty.
	record record: (self generationOfTenIndividualsNumber: 1).
	record record: (self generationOfTenIndividualsNumber: 2).
	self assert: record contents notEmpty.
	lines := record contents lines.
	self
		assert: lines size equals: 24;
		assert: (lines at: 1) equals: 'Generation: 1';
		assert: (lines at: 12) isAllSeparators;
		assert: (lines at: 13) equals: 'Generation: 2';
		assert: (lines at: 24) isAllSeparators