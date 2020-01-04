Class {
	#name : #ParentSelectionStrategy,
	#superclass : #Object,
	#instVars : [
		'randomProvider'
	],
	#category : 'Evelyn-Core'
}

{ #category : #defaults }
ParentSelectionStrategy class >> defaultRandomProvider [
	^ BetaDistributionRandomProvider definedFirstShape: 1 andSecondShape: 6
]

{ #category : #'instance creation' }
ParentSelectionStrategy class >> new [
	^ self obtainingRandomNumbersFrom: self defaultRandomProvider
]

{ #category : #'instance creation' }
ParentSelectionStrategy class >> obtainingRandomNumbersFrom: aRandomProvider [
	^ self basicNew initializeObtainingRandomNumbersFrom: aRandomProvider
]

{ #category : #initialization }
ParentSelectionStrategy >> initializeObtainingRandomNumbersFrom: aRandomProvider [
	randomProvider := aRandomProvider
]

{ #category : #accessing }
ParentSelectionStrategy >> numberOfParentsNeededFrom: aGeneration afterSelecting: individuals [
	^ (aGeneration size - individuals size) * 2
]

{ #category : #selecting }
ParentSelectionStrategy >> select: aNumber parentsFrom: aCollectionOfIndividuals [
	| selectedParents |
	selectedParents := OrderedCollection new.
	aNumber timesRepeat: [ selectedParents add: (self selectParentFrom: aCollectionOfIndividuals) ].
	^ selectedParents
]

{ #category : #'selecting - private' }
ParentSelectionStrategy >> selectParentFrom: aCollectionOfIndividuals [
	^ aCollectionOfIndividuals at: (randomProvider random * aCollectionOfIndividuals size) ceiling
]
