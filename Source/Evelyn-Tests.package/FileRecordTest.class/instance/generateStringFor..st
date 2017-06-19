accessing
generateStringFor: aNumericIndividual
	^ String
		streamContents: [ :aStream | 
			aStream tab.
			(NumericMapper mapping: aNumericIndividual) printOn: aStream ]