Class {
	#name : #CrossOverStrategy,
	#superclass : #Object,
	#category : 'Evelyn-Core'
}

{ #category : #defaults }
CrossOverStrategy class >> defaultRandomProvider [
	^ UniformDistributionRandomProvider definedLowLimit: 1 andHighLimit: 5 
]

{ #category : #'instance creation' }
CrossOverStrategy class >> new [
	^ self obtainingRandomNumbersFrom: self defaultRandomProvider
]

{ #category : #'instance creation' }
CrossOverStrategy class >> obtainingRandomNumbersFrom: aRandomProvider [
	^ self basicNew initializeObtainingRandomNumbersFrom: aRandomProvider
]

{ #category : #evaluating }
CrossOverStrategy >> cross: parentA overWith: parentB [
	self subclassResponsibility
]

{ #category : #initialization }
CrossOverStrategy >> initializeObtainingRandomNumbersFrom: aRandomProvider [
	self subclassResponsibility
]
