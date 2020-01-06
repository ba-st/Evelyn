Class {
	#name : #SwapMutationStrategy,
	#superclass : #MutationStrategy,
	#instVars : [
		'individualClass',
		'probabilityChance',
		'randomProvider'
	],
	#category : 'Evelyn-Mutation'
}

{ #category : #'instance creation' }
SwapMutationStrategy class >> generating: anIndividualClass with: aProbabilityChance randomizedUsing: aRandomProvider [
	^ self new
		initializeGenerating: anIndividualClass
		with: aProbabilityChance
		randomizedUsing: aRandomProvider
]

{ #category : #initialization }
SwapMutationStrategy >> initializeGenerating: anIndividualClass with: aProbabilityChance randomizedUsing: aRandomProvider [
	probabilityChance := aProbabilityChance.
	randomProvider := aRandomProvider.
	individualClass := anIndividualClass
]

{ #category : #'private - building' }
SwapMutationStrategy >> mutateGenotypeOf: anIndividual [
	| mutatedGenotype tupleMinMax |
	mutatedGenotype := anIndividual genotype copy.
	tupleMinMax := self
		randomTupleStartingOnOneAndEndingOn: anIndividual genotype size.
	^ mutatedGenotype swap: tupleMinMax min with: tupleMinMax max
]

{ #category : #'private - building' }
SwapMutationStrategy >> numberBetween1And: aPositiveNumber [
	^ randomProvider numberBetween: 1 and: aPositiveNumber
]

{ #category : #building }
SwapMutationStrategy >> onGeneration: aGenerationNumber mutate: aCollectionOfIndividuals [
	^ aCollectionOfIndividuals
		collect: [ :anIndividual | 
			(self shouldMutateOn: aGenerationNumber)
				ifTrue: [ individualClass fromGenotype: (self mutateGenotypeOf: anIndividual) ]
				ifFalse: [ anIndividual ] ]
]

{ #category : #'private - building' }
SwapMutationStrategy >> randomTupleStartingOnOneAndEndingOn: aMax [

	| firstRandom secondRandom |

	"Select two different numbers between 1 and aMax. 
	If the numbers are the same, select again"
	firstRandom := self numberBetween1And: aMax.
	secondRandom := self numberBetween1And: aMax.
	^ firstRandom = secondRandom
		ifTrue: [ self randomTupleStartingOnOneAndEndingOn: aMax ]
		ifFalse: [ firstRandom @ secondRandom ]
]

{ #category : #'private - testing' }
SwapMutationStrategy >> shouldMutateOn: aGenerationNumber [
	^ probabilityChance checkBelow: aGenerationNumber
]
