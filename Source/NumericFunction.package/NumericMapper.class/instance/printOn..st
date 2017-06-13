printing
printOn: aStream
	aStream
		nextPutAll: 'Record: NumericIndividual: ';
		nextPutAll: individual number asString;
		nextPutAll: ' - '.
	individual binaryNumber asArray printOn: aStream