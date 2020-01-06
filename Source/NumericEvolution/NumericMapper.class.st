Class {
	#name : #NumericMapper,
	#superclass : #IndividualMapper,
	#category : 'NumericEvolution-Core'
}

{ #category : #printing }
NumericMapper >> mapping: aNumericIndividual [
	^ String
		streamContents: [ :aStream | 
			aStream
				nextPutAll: 'Record: NumericIndividual: ';
				nextPutAll: aNumericIndividual number asString;
				nextPutAll: ' - '.
			aNumericIndividual genotype asArray printOn: aStream ]
]
