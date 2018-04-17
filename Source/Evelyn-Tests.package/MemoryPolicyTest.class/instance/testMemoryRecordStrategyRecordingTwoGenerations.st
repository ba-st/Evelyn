tests
testMemoryRecordStrategyRecordingTwoGenerations
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