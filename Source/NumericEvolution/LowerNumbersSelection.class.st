Class {
	#name : #LowerNumbersSelection,
	#superclass : #SurvivorsSelectionStrategy,
	#instVars : [
		'survivalPercentage'
	],
	#category : 'NumericEvolution-Extremum'
}

{ #category : #'Instance Creation' }
LowerNumbersSelection class >> surviving: aFraction [

	^ self new initializeSurviving: aFraction
]

{ #category : #initialization }
LowerNumbersSelection >> initializeSurviving: aFraction [

	survivalPercentage := aFraction
]

{ #category : #sorting }
LowerNumbersSelection >> sortByFitness: aCollectionOfIndividuals [
	^ (aCollectionOfIndividuals asSortedCollection: [ :a :b | a number <= b number ]) asArray
]

{ #category : #accessing }
LowerNumbersSelection >> survivalPercentage [

	^ survivalPercentage
]
