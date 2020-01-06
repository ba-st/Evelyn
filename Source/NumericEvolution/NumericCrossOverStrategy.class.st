Class {
	#name : #NumericCrossOverStrategy,
	#superclass : #CrossOverStrategy,
	#instVars : [
		'randomProvider'
	],
	#category : 'NumericEvolution-Core'
}

{ #category : #evaluating }
NumericCrossOverStrategy >> cross: parentA overWith: parentB [
	| modifiedIndividual |
	modifiedIndividual := OrderedCollection new: parentA genotype size.
	self crossGenesOf: parentA and: parentB applying: [ :gene | modifiedIndividual add: gene ].
	^ NumericIndividual basedOn: (BinaryCodex new fromBinary: modifiedIndividual)
]

{ #category : #'private - evaluating' }
NumericCrossOverStrategy >> cross: geneA with: geneB [

	^geneA bitXor: geneB
]

{ #category : #'private - evaluating' }
NumericCrossOverStrategy >> crossGenesOf: parentA and: parentB applying: aBlock [
	parentA genotype with: parentB genotype do: [ :geneA :geneB | aBlock value: (self cross: geneA with: geneB) ]
]

{ #category : #initialization }
NumericCrossOverStrategy >> initializeObtainingRandomNumbersFrom: aRandomProvider [
	randomProvider := aRandomProvider
]
