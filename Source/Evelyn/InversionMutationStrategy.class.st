Class {
	#name : #InversionMutationStrategy,
	#superclass : #MutationStrategy,
	#instVars : [
		'individualClass',
		'probabilityChance',
		'randomProvider'
	],
	#category : 'Evelyn-Mutation'
}

{ #category : #'instance creation' }
InversionMutationStrategy class >> generating: anIndividualClass with: aProbabilityChance randomizedUsing: aRandomProvider [
	^ self new
		initializeGenerating: anIndividualClass
		with: aProbabilityChance
		randomizedUsing: aRandomProvider
]

{ #category : #initialization }
InversionMutationStrategy >> initializeGenerating: anIndividualClass with: aProbabilityChance randomizedUsing: aRandomProvider [
	probabilityChance := aProbabilityChance.
	randomProvider := aRandomProvider.
	individualClass := anIndividualClass
]

{ #category : #'private - testing' }
InversionMutationStrategy >> inversion: aGenotype startingOn: aMinNumber andEndingOn: aMaxNumber [
	^ OrderedCollection new
		addAll: (aGenotype copyFrom: 1 to: aMinNumber - 1);
		addAll: (aGenotype copyFrom: aMinNumber to: aMaxNumber) reverse;
		addAll: (aGenotype copyFrom: aMaxNumber + 1 to: aGenotype size);
		yourself
]

{ #category : #'private - building' }
InversionMutationStrategy >> mutateGenotypeOf: anIndividual [
	| tupleMinMax |
	tupleMinMax := self
		randomTupleStartingOnOneAndEndingOn: anIndividual genotype size.
	^ self
		inversion: anIndividual genotype
		startingOn: tupleMinMax min
		andEndingOn: tupleMinMax max
]

{ #category : #'private - building' }
InversionMutationStrategy >> numberBetween1And: aPositiveNumber [
	^ randomProvider numberBetween: 1 and: aPositiveNumber
]

{ #category : #building }
InversionMutationStrategy >> onGeneration: aGenerationNumber mutate: aCollectionOfIndividuals [
	^ aCollectionOfIndividuals
		collect: [ :anIndividual | 
			(self shouldMutateOn: aGenerationNumber)
				ifTrue: [ individualClass fromGenotype: (self mutateGenotypeOf: anIndividual) ]
				ifFalse: [ anIndividual ] ]
]

{ #category : #'private - building' }
InversionMutationStrategy >> randomTupleStartingOnOneAndEndingOn: aMax [

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
InversionMutationStrategy >> shouldMutateOn: aGenerationNumber [
	^ probabilityChance checkBelow: aGenerationNumber
]
