tests
testMemoryRecordStrategyRecordingTwoGeneration
	| record generationRecords firstGeneration secondGeneration |
	record := MemoryRecord mappingIndividualsBy: NumericMapper.
	self assert: record contents isEmpty.
	firstGeneration := self generationOfTenIndividualsNumber: 1.
	secondGeneration := self generationOfTenIndividualsNumber: 2.
	record
		record: firstGeneration;
		record: secondGeneration.
	self assert: record contents notEmpty.
	generationRecords := record contents.
	self
		assert: generationRecords size equals: 2;
		assert: (generationRecords at: 1) individualsRecords size equals: 10;
		assert: (generationRecords at: 2) individualsRecords size equals: 10;
		assertCollection: (generationRecords at: 1) individualsRecords
			equals: (firstGeneration individuals collect: [ :individual | NumericMapper for: individual ]);
		assertCollection: (generationRecords at: 2) individualsRecords
			equals: (secondGeneration individuals collect: [ :individual | NumericMapper for: individual ])