Class {
	#name : #UniformDistributionRandomProvider,
	#superclass : #RandomProviderBehaivor,
	#instVars : [
		'uniformDistribution',
		'lowLimit',
		'highLimit'
	],
	#category : 'Evelyn-Mutation'
}

{ #category : #'instance creation' }
UniformDistributionRandomProvider class >> definedLowLimit: aNumber andHighLimit: anotherNumber [
	^ self new initializeDefinedLowLimit: aNumber andHighLimit: anotherNumber
]

{ #category : #'evaluating - private' }
UniformDistributionRandomProvider >> checkLimitsBetween: aNumber and: anotherNumber [
	^ (aNumber between: lowLimit and: highLimit) and: [ anotherNumber between: lowLimit and: highLimit ]
]

{ #category : #initialization }
UniformDistributionRandomProvider >> initializeDefinedLowLimit: aNumber andHighLimit: anotherNumber [
	lowLimit := aNumber.
	highLimit := anotherNumber.
	uniformDistribution := DhbUniformDistribution from: aNumber to: anotherNumber
]

{ #category : #evaluating }
UniformDistributionRandomProvider >> numberBetween: aNumber and: anotherNumber [
	^ (self checkLimitsBetween: aNumber and: anotherNumber)
		ifTrue: [ uniformDistribution random ]
		ifFalse: [ ValueNotFound signal: 'Invalids limits' ]
]

{ #category : #evaluating }
UniformDistributionRandomProvider >> random [
	^ uniformDistribution random
]
