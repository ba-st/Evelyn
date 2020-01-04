Class {
	#name : #RandomProviderBehaivor,
	#superclass : #Object,
	#category : 'Evelyn-Mutation'
}

{ #category : #evaluating }
RandomProviderBehaivor >> numberBetween: aNumber and: anotherNumber [
	^ self subclassResponsibility
]

{ #category : #evaluating }
RandomProviderBehaivor >> random [
	^ self subclassResponsibility
]
