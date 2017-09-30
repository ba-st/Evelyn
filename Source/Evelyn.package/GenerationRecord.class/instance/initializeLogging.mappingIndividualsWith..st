initialization
initializeLogging: aGeneration mappingIndividualsWith: individualMapper
	number := aGeneration number.
	individualsRecord := self generateIndividualRecordsFor: aGeneration individuals with: individualMapper