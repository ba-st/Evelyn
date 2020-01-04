Class {
	#name : #SurvivorsSelectionStrategy,
	#superclass : #Object,
	#category : 'Evelyn-Core'
}

{ #category : #selecting }
SurvivorsSelectionStrategy >> selectSurvivorsFrom: sortedIndividuals [
	| survivalIndex |
	survivalIndex := (sortedIndividuals size * self survivalPercentage) floor.
	^ sortedIndividuals copyFrom: 1 to: survivalIndex
]

{ #category : #sorting }
SurvivorsSelectionStrategy >> sortByFitness: aCollectionOfIndividuals [
	self subclassResponsibility
]

{ #category : #accessing }
SurvivorsSelectionStrategy >> survivalPercentage [
	self subclassResponsibility
]
