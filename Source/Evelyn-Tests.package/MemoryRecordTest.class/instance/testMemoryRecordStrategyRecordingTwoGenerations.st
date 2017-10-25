tests
testMemoryRecordStrategyRecordingTwoGenerations
	| memoryRecord generationRecords firstGeneration secondGeneration |
	memoryRecord := MemoryRecord mappingIndividualsWith: NumericMapper.
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
			equivalentTo: (firstGeneration individuals collect: [ :individual | NumericMapper mapping: individual ])
			where: [ :mapper :anotherMapper | self assert: mapper individual equals: anotherMapper individual ];
		assertCollection: (generationRecords at: 2) individualsRecords
			equivalentTo: (secondGeneration individuals collect: [ :individual | NumericMapper mapping: individual ])
			where: [ :mapper :anotherMapper | self assert: mapper individual equals: anotherMapper individual ]