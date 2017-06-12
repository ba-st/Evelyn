initialization
generateIndividualRecordsFor: individuals with: individualMapper
	^ individuals
		inject: OrderedCollection new
		into: [ :individualRecords :individual | 
			individualRecords
				add: (individualMapper for: individual);
				yourself ]