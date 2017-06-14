tests
testFileRecordStrategyRecordingTwoGeneration
	| record lines firstGeneration secondGeneration |
	record := FileRecord writeOn: self file mappingIndividualsBy: NumericMapper.
	self assert: record contents isEmpty.
	firstGeneration := self generationOfTenIndividualsNumber: 1.
	secondGeneration := self generationOfTenIndividualsNumber: 2.
	record record: firstGeneration.
	record record: secondGeneration.
	self assert: record contents notEmpty.
	lines := record contents lines.
	self
		assert: lines size equals: 24;
		assert: (lines at: 1) equals: 'Generation: 1';
		assert: (lines at: 12) isAllSeparators;
		assert: (lines at: 13) equals: 'Generation: 2';
		assert: (lines at: 24) isAllSeparators.
	(lines copyFrom: 2 to: 11)
		doWithIndex: [ :line :index | self assert: line equals: (self generateStringFor: (firstGeneration individuals at: index)) ].
	(lines copyFrom: 14 to: 23)
		doWithIndex: [ :line :index | self assert: line equals: (self generateStringFor: (secondGeneration individuals at: index)) ]