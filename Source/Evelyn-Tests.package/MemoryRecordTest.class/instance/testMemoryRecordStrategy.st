tests
testMemoryRecordStrategy
	| memoryRecord generationRecords generation |
	memoryRecord := MemoryRecord mappingIndividualsWith: NumericMapper.
	self assert: memoryRecord records isEmpty.
	generation := self generationOfTenIndividualsNumber: 1.
	memoryRecord record: generation.
	self assert: memoryRecord records notEmpty.
	generationRecords := memoryRecord records.
	self
		assert: generationRecords size equals: 1;
		assert: (generationRecords at: 1) individualsRecords size equals: 10;
		assertCollection: (generationRecords at: 1) individualsRecords
			equals: (generation individuals collect: [ :individual | NumericMapper mapping: individual ])