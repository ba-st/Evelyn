tests
testMemoryRecordStrategy
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