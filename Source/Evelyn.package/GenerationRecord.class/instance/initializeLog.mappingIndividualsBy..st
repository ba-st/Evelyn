initialization
initializeLog: aGeneration mappingIndividualsBy: individualMapper
	number := aGeneration number.
	individualsRecord := self
		generateIndividualRecordsFor: aGeneration individuals
		with: individualMapper