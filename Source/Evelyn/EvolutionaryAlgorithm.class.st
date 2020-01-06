Class {
	#name : #EvolutionaryAlgorithm,
	#superclass : #Object,
	#instVars : [
		'context',
		'startIndividuals'
	],
	#category : 'Evelyn-Core'
}

{ #category : #'instance creation' }
EvolutionaryAlgorithm class >> startingWith: aColecctionOfIndividuals using: aContext [
	^ self new initializeStartingWith: aColecctionOfIndividuals using: aContext
]

{ #category : #accessing }
EvolutionaryAlgorithm >> buildGeneration: aNumber composedOf: mutatedChildren and: survivors [
	^ context
		buildGeneration: aNumber
		composedOf:
			(OrderedCollection new
				addAll: survivors;
				addAll: mutatedChildren;
				yourself)
]

{ #category : #accessing }
EvolutionaryAlgorithm >> generateFirstGeneration [
	^ context buildGeneration: 1 composedOf: startIndividuals
]

{ #category : #initialization }
EvolutionaryAlgorithm >> initializeStartingWith: aCollectionOfIndividuals using: aContext [
	startIndividuals := aCollectionOfIndividuals.
	context := aContext
]

{ #category : #accessing }
EvolutionaryAlgorithm >> lastGeneration [
	context changeCurrentGenerationTo: self generateFirstGeneration.
	context
		untilStoppingCriteriaIsMetDo: [ context recordCurrentGeneration.
			context changeCurrentGenerationTo: self nextGeneration ].
	context recordCurrentGeneration.
	^ context currentGeneration
]

{ #category : #accessing }
EvolutionaryAlgorithm >> nextGeneration [
	| survivors children mutatedChildren oldGeneration |
	oldGeneration := context currentGeneration.
	survivors := context survivorsOf: oldGeneration.
	children := context childrenOf: oldGeneration afterSelecting: survivors.
	mutatedChildren := context mutatedChildrenOf: oldGeneration obtainedFrom: children.
	^ self buildGeneration: oldGeneration number + 1 composedOf: mutatedChildren and: survivors
]
