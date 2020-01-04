Class {
	#name : #NullPolicy,
	#superclass : #ReportingPolicy,
	#category : 'Evelyn-Record'
}

{ #category : #accessing }
NullPolicy >> individualMapper [
	^ self shouldNotImplement
]

{ #category : #evaluating }
NullPolicy >> record: aGenerationRecord [
	"Do Nothing - jfischetti"
	
]
