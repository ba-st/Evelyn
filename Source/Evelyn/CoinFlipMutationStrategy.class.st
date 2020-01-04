Class {
	#name : #CoinFlipMutationStrategy,
	#superclass : #MutationStrategy,
	#instVars : [
		'mutator',
		'individualClass',
		'probabilityChance',
		'randomProvider'
	],
	#category : 'Evelyn-Mutation'
}

{ #category : #'instance creation' }
CoinFlipMutationStrategy class >> generating: anIndividualClass applying: aMutator with: aProbabilityChance randomizedUsing: aRandomProvider [
	^ self new
		initializeGenerating: anIndividualClass
		applying: aMutator
		with: aProbabilityChance
		randomizedUsing: aRandomProvider
]

{ #category : #initialization }
CoinFlipMutationStrategy >> initializeGenerating: anIndividualClass applying: aMutator with: aProbabilityChance randomizedUsing: aRandomProvider [
	probabilityChance := aProbabilityChance.
	randomProvider := aRandomProvider.
	individualClass := anIndividualClass.
	mutator := aMutator
]

{ #category : #'private - building' }
CoinFlipMutationStrategy >> mutatedGeneBasedOn: aGene [
	^ mutator mutate: aGene using: randomProvider
]

{ #category : #building }
CoinFlipMutationStrategy >> onGeneration: aGenerationNumber mutate: aCollectionOfIndividuals [
	^ aCollectionOfIndividuals
		collect: [ :anIndividual | 
			individualClass
				fromGenotype: (self onGeneration: aGenerationNumber mutateGenotypeOf: anIndividual) ]
]

{ #category : #'private - building' }
CoinFlipMutationStrategy >> onGeneration: aGenerationNumber mutateGenotypeOf: anIndividual [
	^ anIndividual genotype
		collect: [ :aGene | 
			(self shouldMutateOn: aGenerationNumber)
				ifTrue: [ self mutatedGeneBasedOn: aGene ]
				ifFalse: [ aGene ] ]
]

{ #category : #'private - testing' }
CoinFlipMutationStrategy >> shouldMutateOn: aGenerationNumber [
	^ probabilityChance checkBelow: aGenerationNumber
]
