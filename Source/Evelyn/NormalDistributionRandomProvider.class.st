Class {
	#name : #NormalDistributionRandomProvider,
	#superclass : #RandomProviderBehaivor,
	#instVars : [
		'normalDistribution'
	],
	#category : 'Evelyn-Mutation'
}

{ #category : #'instance creation' }
NormalDistributionRandomProvider class >> definedMu: aNumber andSigma: anotherNumber [
	^ self new initializeDefinedMu: aNumber andSigma: anotherNumber
]

{ #category : #initialization }
NormalDistributionRandomProvider >> initializeDefinedMu: aNumber andSigma: anotherNumber [
	normalDistribution := DhbNormalDistribution new: aNumber sigma: anotherNumber
]

{ #category : #evaluating }
NormalDistributionRandomProvider >> numberBetween: aNumber and: anotherNumber [
	| newRandom |
	newRandom := normalDistribution random rounded.
	^ (newRandom between: aNumber and: anotherNumber)
		ifTrue: [ newRandom ]
		ifFalse: [ self numberBetween: aNumber and: anotherNumber ]
]

{ #category : #evaluating }
NormalDistributionRandomProvider >> random [
	^ normalDistribution random
]
