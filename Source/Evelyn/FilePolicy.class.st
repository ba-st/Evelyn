Class {
	#name : #FilePolicy,
	#superclass : #ReportingPolicy,
	#instVars : [
		'fileStream',
		'individualMapper'
	],
	#category : 'Evelyn-Record'
}

{ #category : #'instance creation' }
FilePolicy class >> writingTo: aFileName mappingIndividualsWith: anIndividualMapper [
	^ self new initializeWritingTo: aFileName mappingIndividualsWith: anIndividualMapper
]

{ #category : #accessing }
FilePolicy >> individualMapper [
	^ individualMapper
]

{ #category : #initialization }
FilePolicy >> initializeWritingTo: aFileName mappingIndividualsWith: anIndividualMapper [
	fileStream := FileStream forceNewFileNamed: aFileName.
	individualMapper := anIndividualMapper
]

{ #category : #evaluating }
FilePolicy >> record: aGeneration [
	[ fileStream
		reopen;
		setToEnd.
	(self generateRecordFor: aGeneration) printOn: fileStream ]
		ensure: [ fileStream close ]
]
