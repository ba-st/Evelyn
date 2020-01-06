Class {
	#name : #MemoryPolicyTest,
	#superclass : #TestCase,
	#category : 'Evelyn-Tests-Record'
}

{ #category : #accessing }
MemoryPolicyTest >> assertCollection: aMapperCollection equivalentTo: anotherMapperCollection where: assertionBlock [
	self assert: aMapperCollection size equals: anotherMapperCollection size.
	aMapperCollection
		doWithIndex:
			[ :mapper :index | assertionBlock cull: mapper cull: (anotherMapperCollection at: index) ]
]

{ #category : #accessing }
MemoryPolicyTest >> generateStartingIndividuals [
	| individuals numericIndividualBuilder |
	individuals := OrderedCollection new.
	numericIndividualBuilder := NumericIndividualBuilder randomizedUsing: self randomProvider.
	10 timesRepeat: [ individuals add: numericIndividualBuilder build ].
	^ individuals
]

{ #category : #accessing }
MemoryPolicyTest >> generationOfTenIndividualsNumber: anObject [
	^ EvolutionaryAlgorithmGeneration number: 1 composedOf: self generateStartingIndividuals
]

{ #category : #accessing }
MemoryPolicyTest >> randomProvider [
	^ Random seed: 4
]

{ #category : #tests }
MemoryPolicyTest >> testMemoryRecordStrategy [
	| memoryRecord generationRecords generation |
	memoryRecord := MemoryPolicy mappingIndividualsWith: NumericMapper new.
	self assert: memoryRecord records isEmpty.
	generation := self generationOfTenIndividualsNumber: 1.
	memoryRecord record: generation.
	self assert: memoryRecord records notEmpty.
	generationRecords := memoryRecord records.
	self
		assert: generationRecords size equals: 1;
		assert: (generationRecords at: 1) individualsRecords size equals: 10;
		assertCollection: (generationRecords at: 1) individualsRecords
			equivalentTo: (generation individuals collect: [ :individual | NumericMapper new mapping: individual ])
			where: [ :record :anotherRecord | self assert: record  equals: anotherRecord  ]
]

{ #category : #tests }
MemoryPolicyTest >> testMemoryRecordStrategyRecordingTwoGenerations [
	| memoryRecord generationRecords firstGeneration secondGeneration mapper |
	mapper := NumericMapper new.
	memoryRecord := MemoryPolicy mappingIndividualsWith: mapper.
	self assert: memoryRecord records isEmpty.
	firstGeneration := self generationOfTenIndividualsNumber: 1.
	secondGeneration := self generationOfTenIndividualsNumber: 2.
	memoryRecord
		record: firstGeneration;
		record: secondGeneration.
	self assert: memoryRecord records notEmpty.
	generationRecords := memoryRecord records.
	self
		assert: generationRecords size equals: 2;
		assert: (generationRecords at: 1) individualsRecords size equals: 10;
		assert: (generationRecords at: 2) individualsRecords size equals: 10;
		assertCollection: (generationRecords at: 1) individualsRecords
			equivalentTo: (firstGeneration individuals collect: [ :individual | mapper mapping: individual ])
			where: [ :record :anotherRecord | self assert: record  equals: anotherRecord  ];
		assertCollection: (generationRecords at: 2) individualsRecords
			equivalentTo: (secondGeneration individuals collect: [ :individual | mapper mapping: individual ])
			where: [ :record :anotherRecord | self assert: record  equals: anotherRecord  ]
]
