Class {
	#name : #EvolutionaryAlgorithmContextBuilder,
	#superclass : #Object,
	#instVars : [
		'parentSelectionStrategy',
		'stoppingCriteria',
		'record',
		'survivorsSelectionStrategyBinding',
		'crossOverStrategyBinding',
		'mutatorBinding'
	],
	#category : 'Evelyn-Core'
}

{ #category : #building }
EvolutionaryAlgorithmContextBuilder >> build [
	^ EvolutionaryAlgorithmContext
		selectingSurvivorsWith: survivorsSelectionStrategyBinding content
		parentsWith: parentSelectionStrategy
		crossingOverWith: crossOverStrategyBinding content
		mutatingWith: mutatorBinding content
		stoppingCriteria: stoppingCriteria
		reportingWith: record
]

{ #category : #configuring }
EvolutionaryAlgorithmContextBuilder >> configureCrossOverStrategyTo: aCrossOverStrategy [
	crossOverStrategyBinding := Binding to: aCrossOverStrategy
]

{ #category : #configuring }
EvolutionaryAlgorithmContextBuilder >> configureMutationStrategyTo: aMutationStrategy [
	mutatorBinding := Binding to: aMutationStrategy
]

{ #category : #configuring }
EvolutionaryAlgorithmContextBuilder >> configureParentSelectionStrategyTo: aParentSelectionStrategy [
	parentSelectionStrategy := aParentSelectionStrategy
]

{ #category : #configuring }
EvolutionaryAlgorithmContextBuilder >> configureRecordTo: aRecord [
	record := aRecord
]

{ #category : #configuring }
EvolutionaryAlgorithmContextBuilder >> configureStoppingCriteriaTo: aStoppingCriteria [
	stoppingCriteria := aStoppingCriteria
]

{ #category : #configuring }
EvolutionaryAlgorithmContextBuilder >> configureSurvivorsSelectionStrategyTo: aSurvivorsSelectionStrategy [
	survivorsSelectionStrategyBinding := Binding to: aSurvivorsSelectionStrategy
]

{ #category : #'accessing - private' }
EvolutionaryAlgorithmContextBuilder >> defaultParentStrategy [
	^ ParentSelectionStrategy new
]

{ #category : #'accessing - private' }
EvolutionaryAlgorithmContextBuilder >> defaultRecord [
	^ NullPolicy new
]

{ #category : #'accessing - private' }
EvolutionaryAlgorithmContextBuilder >> defaultStoppingCriteria [
	^ GenerationNumberStoppingCriteria stoppingAfter: 100
]

{ #category : #initialization }
EvolutionaryAlgorithmContextBuilder >> initialize [
	self initializeDefaults.
	self initializeUndefinedStrategies
]

{ #category : #initialization }
EvolutionaryAlgorithmContextBuilder >> initializeDefaults [
	parentSelectionStrategy := self defaultParentStrategy.
	stoppingCriteria := self defaultStoppingCriteria.
	record := self defaultRecord
]

{ #category : #initialization }
EvolutionaryAlgorithmContextBuilder >> initializeUndefinedStrategies [
	survivorsSelectionStrategyBinding := Binding undefinedExplainedBy: 'The survivor selection strategy should be configure by User' raising: InstanceCreationFailed.
	crossOverStrategyBinding := Binding undefinedExplainedBy: 'The cross over strategy should be configure by User' raising: InstanceCreationFailed.
	mutatorBinding := Binding undefinedExplainedBy: 'The mutator should be configure by User' raising: InstanceCreationFailed
]
