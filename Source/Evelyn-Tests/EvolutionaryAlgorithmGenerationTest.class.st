Class {
	#name : #EvolutionaryAlgorithmGenerationTest,
	#superclass : #TestCase,
	#category : 'Evelyn-Tests-Core'
}

{ #category : #tests }
EvolutionaryAlgorithmGenerationTest >> testAccessors [
	| individuals generation |
	individuals := #(1 2 3 4).
	generation := EvolutionaryAlgorithmGeneration number: 1 composedOf: individuals.
	self
		assert: generation number equals: 1;
		assert: generation individuals equals: individuals;
		assert: generation size equals: individuals size
]

{ #category : #tests }
EvolutionaryAlgorithmGenerationTest >> testCantCreateGenerationWhenGeneratioNumberIsZero [
	self
		should: [ EvolutionaryAlgorithmGeneration number: 0 composedOf: #(1 2 3 4) ]
		raise: InstanceCreationFailed
		withDescription: 'Its makes no sense a generation numbered 0'
]

{ #category : #tests }
EvolutionaryAlgorithmGenerationTest >> testCantCreateGenerationWhenGenerationNumberIsFraction [
	self
		should: [ EvolutionaryAlgorithmGeneration number: 1.4 composedOf: #(1 2 3 4) ]
		raise: InstanceCreationFailed
		withDescription: 'Its makes no sense a generation numbered with decimals'
]

{ #category : #tests }
EvolutionaryAlgorithmGenerationTest >> testCantCreateGenerationWhenGenerationNumberIsNegative [
	self
		should: [ EvolutionaryAlgorithmGeneration number: -1 composedOf: #(1 2 3 4) ]
		raise: InstanceCreationFailed
		withDescription: 'Its makes no sense a generation numbered with a negative number'
]

{ #category : #tests }
EvolutionaryAlgorithmGenerationTest >> testCantCreateGenerationWithoutIndividuals [
	self
		should: [ EvolutionaryAlgorithmGeneration number: 1 composedOf: #() ]
		raise: InstanceCreationFailed
		withDescription: 'Its makes no sense a generation without individuals'
]
