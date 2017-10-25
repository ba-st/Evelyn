printing
printOn: aStream
	aStream
		nextPutAll: 'Record: NumericIndividual: ';
		nextPutAll: individual number asString;
		nextPutAll: ' - '.
	individual genotype asArray printOn: aStream