Class {
	#name : #MemoryPolicy,
	#superclass : #ReportingPolicy,
	#instVars : [
		'records',
		'individualMapper'
	],
	#category : 'Evelyn-Record'
}

{ #category : #'instance creation' }
MemoryPolicy class >> mappingIndividualsWith: anIndividualMapper [
	^ self new initializeMappingIndividualsWith: anIndividualMapper
]

{ #category : #accessing }
MemoryPolicy >> individualMapper [
	^ individualMapper
]

{ #category : #initialization }
MemoryPolicy >> initializeMappingIndividualsWith: anIndividualMapper [
	records := OrderedCollection new.
	individualMapper := anIndividualMapper
]

{ #category : #evaluating }
MemoryPolicy >> record: aGeneration [
	records add: (self generateRecordFor: aGeneration)
]

{ #category : #evaluating }
MemoryPolicy >> records [
	^ records
]
