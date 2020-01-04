Class {
	#name : #ReportingPolicy,
	#superclass : #Object,
	#category : 'Evelyn-Record'
}

{ #category : #evaluating }
ReportingPolicy >> generateRecordFor: aGeneration [
	^ GenerationRecord logging: aGeneration mappingIndividualsWith: self individualMapper
]

{ #category : #accessing }
ReportingPolicy >> individualMapper [
	^ self subclassResponsibility
]

{ #category : #evaluating }
ReportingPolicy >> record: aGenerationRecord [
	self subclassResponsibility
]
