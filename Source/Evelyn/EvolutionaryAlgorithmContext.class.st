Class {
	#name : #EvolutionaryAlgorithmContext,
	#superclass : #Object,
	#instVars : [
		'survivorSelectionStrategy',
		'parentSelectionStrategy',
		'crossOverStrategy',
		'mutationStrategy',
		'stoppingCriteria',
		'currentGeneration',
		'record'
	],
	#category : 'Evelyn-Core'
}

{ #category : #'instance creation' }
EvolutionaryAlgorithmContext class >> selectingSurvivorsWith: aSurvivorsSelectionStrategy parentsWith: aParentSelectionStrategy crossingOverWith: aCrossOverStrategy mutatingWith: aMutationStrategy stoppingCriteria: aStoppingCriteria reportingWith: aPluggableRecord [
	^ self new
		initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy
		parentsWith: aParentSelectionStrategy
		crossingOverWith: aCrossOverStrategy
		mutatingWith: aMutationStrategy
		stoppingCriteria: aStoppingCriteria
		reportingWith: aPluggableRecord
]

{ #category : #'generation builder' }
EvolutionaryAlgorithmContext >> buildGeneration: number composedOf: individuals [
	^ EvolutionaryAlgorithmGeneration number: number composedOf: (survivorSelectionStrategy sortByFitness: individuals)
]

{ #category : #configuring }
EvolutionaryAlgorithmContext >> changeCurrentGenerationTo: anEvolutionaryAlgorithmGeneration [
	currentGeneration := Binding to: anEvolutionaryAlgorithmGeneration
]

{ #category : #fitness }
EvolutionaryAlgorithmContext >> childrenOf: aGeneration afterSelecting: survivors [
	| numberOfParentsNeeded |
	numberOfParentsNeeded := parentSelectionStrategy numberOfParentsNeededFrom: aGeneration afterSelecting: survivors.
	^ self createChildrenOf: aGeneration using: numberOfParentsNeeded
]

{ #category : #fitness }
EvolutionaryAlgorithmContext >> createChildUsing: aCollectionOfIndividuals at: anIndex [
	^ crossOverStrategy cross: (aCollectionOfIndividuals at: anIndex * 2 - 1) overWith: (aCollectionOfIndividuals at: anIndex * 2)
]

{ #category : #fitness }
EvolutionaryAlgorithmContext >> createChildrenOf: aGeneration using: numberOfParentsNeeded [
	| parents |
	parents := parentSelectionStrategy select: numberOfParentsNeeded parentsFrom: (survivorSelectionStrategy sortByFitness: aGeneration individuals).
	^ (1 to: (self numberOfChildrenUsing: numberOfParentsNeeded)) collect: [ :index | self createChildUsing: parents at: index ]
]

{ #category : #accessing }
EvolutionaryAlgorithmContext >> currentGeneration [
	^ currentGeneration content
]

{ #category : #initialization }
EvolutionaryAlgorithmContext >> initializeSelectingSurvivorsWith: aSurvivorsSelectionStrategy parentsWith: aParentSelectionStrategy crossingOverWith: aCrossOverStrategy mutatingWith: aMutationStrategy stoppingCriteria: aStoppingCriteria reportingWith: aPluggableRecord [
	survivorSelectionStrategy := aSurvivorsSelectionStrategy.
	parentSelectionStrategy := aParentSelectionStrategy.
	crossOverStrategy := aCrossOverStrategy.
	mutationStrategy := aMutationStrategy.
	stoppingCriteria := aStoppingCriteria.
	currentGeneration := Binding undefinedExplainedBy: 'Please set the current generation.'.
	record := aPluggableRecord
]

{ #category : #fitness }
EvolutionaryAlgorithmContext >> mutatedChildrenOf: aGeneration obtainedFrom: aCollectionOfIndividuals [
	^ mutationStrategy
		onGeneration: aGeneration number
		mutate: aCollectionOfIndividuals
]

{ #category : #fitness }
EvolutionaryAlgorithmContext >> numberOfChildrenUsing: numberOfParentsNeeded [
	^ numberOfParentsNeeded / 2
]

{ #category : #evaluating }
EvolutionaryAlgorithmContext >> recordCurrentGeneration [
	record record: self currentGeneration
]

{ #category : #accessing }
EvolutionaryAlgorithmContext >> stoppingCriteria [
	^ stoppingCriteria
]

{ #category : #fitness }
EvolutionaryAlgorithmContext >> survivorsOf: aGeneration [
	^ survivorSelectionStrategy selectSurvivorsFrom: aGeneration individuals
]

{ #category : #evaluating }
EvolutionaryAlgorithmContext >> untilStoppingCriteriaIsMetDo: aBlock [
	self stoppingCriteria untilStoppingCriteriaIsMetDo: aBlock workingOn: self
]
