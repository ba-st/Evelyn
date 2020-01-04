Class {
	#name : #NumericIndividualBuilder,
	#superclass : #Object,
	#instVars : [
		'randomProvider'
	],
	#category : 'NumericEvolution-Core'
}

{ #category : #'instance creation' }
NumericIndividualBuilder class >> new [
	^ super new initializeRandomizedUsing: Random new
]

{ #category : #'instance creation' }
NumericIndividualBuilder class >> randomizedUsing: aRandom [
	^ self new initializeRandomizedUsing: aRandom
]

{ #category : #building }
NumericIndividualBuilder >> build [
	^ NumericIndividual basedOn: self nextRandom asInteger
]

{ #category : #initialization }
NumericIndividualBuilder >> initializeRandomizedUsing: aRandom [
	randomProvider := aRandom
]

{ #category : #private }
NumericIndividualBuilder >> nextRandom [

	"Gives a random between 0 and 1023.
	It uses 1023 of maximum because the binary representation is 10 bits "

	^ randomProvider next * 1023
]
