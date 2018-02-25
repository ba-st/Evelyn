accessing
generateStringFor: aNumericIndividual
	^ String
		streamContents: [ :aStream | 
			aStream tab.
			aStream nextPutAll: (NumericMapper new mapping: aNumericIndividual) ]