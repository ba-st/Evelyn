initialization
initializeOf: aGeneration mappedUsing: individualMapper
	number := aGeneration number.
	individualsRecord := self
		generateIndividualRecordsFor: aGeneration individuals
		with: individualMapper