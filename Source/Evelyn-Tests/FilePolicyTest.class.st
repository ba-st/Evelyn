Class {
	#name : #FilePolicyTest,
	#superclass : #TestCase,
	#category : 'Evelyn-Tests-Record'
}

{ #category : #accessing }
FilePolicyTest >> expectedRecordContents [
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: 'Generation: 1';
				cr;
				nextPutAll: '	Record: NumericIndividual: 0 - #(0 0 0 0 0 0 0 0 0 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 538 - #(1 0 0 0 0 1 1 0 1 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 22 - #(0 0 0 0 0 1 0 1 1 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 853 - #(1 1 0 1 0 1 0 1 0 1)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 134 - #(0 0 1 0 0 0 0 1 1 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 895 - #(1 1 0 1 1 1 1 1 1 1)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 192 - #(0 0 1 1 0 0 0 0 0 0)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 731 - #(1 0 1 1 0 1 1 0 1 1)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 733 - #(1 0 1 1 0 1 1 1 0 1)';
				cr;
				nextPutAll: '	Record: NumericIndividual: 755 - #(1 0 1 1 1 1 0 0 1 1)';
				cr;
				nextPutAll: '	';
				cr ]
]

{ #category : #accessing }
FilePolicyTest >> fileName [
	^ 'testRecord.txt'
]

{ #category : #accessing }
FilePolicyTest >> generateStartingIndividuals [
	| individuals numericIndividualBuilder |
	individuals := OrderedCollection new.
	numericIndividualBuilder := NumericIndividualBuilder randomizedUsing: self randomProvider.
	10 timesRepeat: [ individuals add: numericIndividualBuilder build ].
	^ individuals
]

{ #category : #accessing }
FilePolicyTest >> generateStringFor: aNumericIndividual [
	^ String
		streamContents: [ :aStream | 
			aStream tab.
			aStream nextPutAll: (NumericMapper new mapping: aNumericIndividual) ]
]

{ #category : #accessing }
FilePolicyTest >> generationOfTenIndividualsNumber: aNumber [
	^ EvolutionaryAlgorithmGeneration number: aNumber composedOf: self generateStartingIndividuals
]

{ #category : #accessing }
FilePolicyTest >> randomProvider [
	^ Random seed: 4
]

{ #category : #tests }
FilePolicyTest >> testFileRecordStrategy [
	| fileRecord generation |
	fileRecord := FilePolicy writingTo: self fileName mappingIndividualsWith: NumericMapper new.
	generation := self generationOfTenIndividualsNumber: 1.
	fileRecord record: generation.
	FileStream
		readOnlyFileNamed: self fileName
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
]

{ #category : #tests }
FilePolicyTest >> testFileRecordStrategyRecordingTwoGenerations [
	| fileRecord firstGeneration secondGeneration |
	fileRecord := FilePolicy writingTo: self fileName mappingIndividualsWith: NumericMapper new.
	firstGeneration := self generationOfTenIndividualsNumber: 1.
	secondGeneration := self generationOfTenIndividualsNumber: 2.
	fileRecord record: firstGeneration.
	fileRecord record: secondGeneration.
	FileStream
		readOnlyFileNamed: self fileName
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
]
