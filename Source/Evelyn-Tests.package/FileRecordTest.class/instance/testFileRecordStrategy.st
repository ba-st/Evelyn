tests
testFileRecordStrategy
	| fileRecord generation |
	fileRecord := FileRecord writingTo: self file mappingIndividualsWith: NumericMapper.
	generation := self generationOfTenIndividualsNumber: 1.
	fileRecord record: generation.
	FileStream
		readOnlyFileNamed: self file
		do: [ :file | 
			| lines |
			self assert: file contents notEmpty.
			lines := file contents lines.
			self
				assert: lines size equals: 12;
				assert: (lines at: 1) equals: 'Generation: 1';
				assert: (lines at: 12) isAllSeparators.
			(lines copyFrom: 2 to: 11) doWithIndex: [ :line :index | self assert: line equals: (self generateStringFor: (generation individuals at: index)) ].
			self assert: file contents equals: self expectedRecordContents ]