printing
mapping: aNumericIndividual
	^ String
		streamContents: [ :aStream | 
			aStream
				nextPutAll: 'Record: NumericIndividual: ';
				nextPutAll: aNumericIndividual number asString;
				nextPutAll: ' - '.
			aNumericIndividual genotype asArray printOn: aStream ]