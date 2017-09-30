tests
testFileRecordStrategyRecordingTwoGenerations
	| fileRecord firstGeneration secondGeneration |
	fileRecord := FileRecord writingTo: self file mappingIndividualsWith: NumericMapper.
	firstGeneration := self generationOfTenIndividualsNumber: 1.
	secondGeneration := self generationOfTenIndividualsNumber: 2.
	fileRecord record: firstGeneration.
	fileRecord record: secondGeneration.
	FileStream
		readOnlyFileNamed: self file
		do: [ :file | 
			| lines |
			self assert: file contents notEmpty.
			lines := file contents lines.
			self
				assert: lines size equals: 24;
				assert: (lines at: 1) equals: 'Generation: 1';
				assert: (lines at: 12) isAllSeparators;
				assert: (lines at: 13) equals: 'Generation: 2';
				assert: (lines at: 24) isAllSeparators.
			(lines copyFrom: 2 to: 11) doWithIndex: [ :line :index | self assert: line equals: (self generateStringFor: (firstGeneration individuals at: index)) ].
			(lines copyFrom: 14 to: 23) doWithIndex: [ :line :index | self assert: line equals: (self generateStringFor: (secondGeneration individuals at: index)) ] ]