Class {
	#name : #IndividualMutator,
	#superclass : #Object,
	#category : 'Evelyn-Mutation'
}

{ #category : #building }
IndividualMutator >> mutate: anObject using: aRandomProvider [
	^ self subclassResponsibility
]
