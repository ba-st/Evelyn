"
Factory of NumericIndividual
"
Class {
	#name : #NumericIndividualFactory,
	#superclass : #Object,
	#instVars : [
		'startingIndividuals'
	],
	#category : 'NumericEvolution-Tests-Core'
}

{ #category : #accessing }
NumericIndividualFactory >> five [
	^ NumericIndividual basedOn: 5
]

{ #category : #accessing }
NumericIndividualFactory >> four [
	^ NumericIndividual basedOn: 4
]

{ #category : #accessing }
NumericIndividualFactory >> one [
	^ NumericIndividual basedOn: 1
]

{ #category : #accessing }
NumericIndividualFactory >> three [
	^ NumericIndividual basedOn: 3
]

{ #category : #accessing }
NumericIndividualFactory >> two [
	^ NumericIndividual basedOn: 2
]
