Class {
	#name : #BetaDistributionRandomProvider,
	#superclass : #RandomProviderBehaivor,
	#instVars : [
		'betaDistribution'
	],
	#category : 'Evelyn-Mutation'
}

{ #category : #'instance creation' }
BetaDistributionRandomProvider class >> definedFirstShape: aNumber andSecondShape: anotherNumber [
	^ self new initializeDefinedFirstShape: aNumber andSecondShape: anotherNumber
]

{ #category : #'instance creation' }
BetaDistributionRandomProvider >> initializeDefinedFirstShape: aNumber andSecondShape: anotherNumber [
	betaDistribution := DhbBetaDistribution shape: aNumber shape: anotherNumber
]

{ #category : #evaluating }
BetaDistributionRandomProvider >> numberBetween: aNumber and: anotherNumber [
	| newRandom |
	newRandom := betaDistribution random * anotherNumber.
	^ (newRandom between: aNumber and: anotherNumber)
		ifTrue: [ newRandom ]
		ifFalse: [ self numberBetween: aNumber and: anotherNumber ]
]

{ #category : #evaluating }
BetaDistributionRandomProvider >> random [
	^ betaDistribution random
]
