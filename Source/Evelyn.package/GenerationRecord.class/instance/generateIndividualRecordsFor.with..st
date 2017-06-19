initialization
generateIndividualRecordsFor: individuals with: individualMapper
	^ individuals collect: [ :individual | individualMapper mapping: individual ]