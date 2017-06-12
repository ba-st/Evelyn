tests
testMemoryRecordStrategyRecordingTwoGeneration
	| record generationRecords generation generation2 |
	record := MemoryRecord mappingIndividualsBy: NumericMapper.
	self assert: record contents isEmpty.
	generation := self generationOfTenIndividualsNumber: 1.
	generation2 := self generationOfTenIndividualsNumber: 2.
	record
		record: generation;
		record: generation2.
	self assert: record contents notEmpty.
	generationRecords := record contents.
	self
		assert: generationRecords size equals: 2;
		assert: (generationRecords at: 1) individualsRecords size equals: 10;
		assert: (generationRecords at: 2) individualsRecords size equals: 10