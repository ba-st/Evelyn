accessing
generateStringFor: aNumericIndividual
	^ String
		streamContents: [ :aStream | 
			aStream tab.
			(NumericMapper for: aNumericIndividual) printOn: aStream ]