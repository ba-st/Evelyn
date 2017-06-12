tests
testMemoryRecordStrategy
	| record generationRecords generation |
	record := MemoryRecord mappingIndividualsBy: NumericMapper.
	self assert: record contents isEmpty.
	generation := self generationOfTenIndividualsNumber: 1.
	record record: generation.
	self assert: record contents notEmpty.
	generationRecords := record contents.
	self
		assert: generationRecords size equals: 1;
		assert: (generationRecords at: 1) individualsRecords size equals: 10