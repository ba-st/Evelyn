Class {
	#name : #GenerationRecord,
	#superclass : #Object,
	#instVars : [
		'number',
		'individualsRecord'
	],
	#category : 'Evelyn-Record'
}

{ #category : #'instance creation' }
GenerationRecord class >> logging: aGeneration mappingIndividualsWith: individualMapper [
	^ self new initializeLogging: aGeneration mappingIndividualsWith: individualMapper
]

{ #category : #initialization }
GenerationRecord >> generateIndividualRecordsFor: individuals with: individualMapper [
	^ individuals collect: [ :individual | individualMapper mapping: individual ]
]

{ #category : #accessing }
GenerationRecord >> individualsRecords [
	^ individualsRecord 
]

{ #category : #initialization }
GenerationRecord >> initializeLogging: aGeneration mappingIndividualsWith: individualMapper [
	number := aGeneration number.
	individualsRecord := self generateIndividualRecordsFor: aGeneration individuals with: individualMapper
]

{ #category : #printing }
GenerationRecord >> printOn: aStream [
	aStream
		nextPutAll: 'Generation: ';
		nextPutAll: number asString;
		crtab.
	individualsRecord
		do: [ :individualRecord | 
			aStream nextPutAll: individualRecord.
			aStream crtab ].
	aStream cr
]
