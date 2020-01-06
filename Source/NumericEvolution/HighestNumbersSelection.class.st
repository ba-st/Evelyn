Class {
	#name : #HighestNumbersSelection,
	#superclass : #SurvivorsSelectionStrategy,
	#instVars : [
		'survivalPercentage'
	],
	#category : 'NumericEvolution-Extremum'
}

{ #category : #'Instance Creation' }
HighestNumbersSelection class >> surviving: aFraction [

	^ self new initializeSurviving: aFraction
]

{ #category : #initialization }
HighestNumbersSelection >> initializeSurviving: aFraction [

	survivalPercentage := aFraction
]

{ #category : #sorting }
HighestNumbersSelection >> sortByFitness: aCollectionOfIndividuals [
	^ (aCollectionOfIndividuals asSortedCollection: [ :a :b | a number >= b number ]) asArray
]

{ #category : #accessing }
HighestNumbersSelection >> survivalPercentage [

	^ survivalPercentage
]
