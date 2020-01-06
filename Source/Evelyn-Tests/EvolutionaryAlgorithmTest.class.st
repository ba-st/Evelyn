Class {
	#name : #EvolutionaryAlgorithmTest,
	#superclass : #TestCase,
	#category : 'Evelyn-Tests-Core'
}

{ #category : #tests }
EvolutionaryAlgorithmTest >> assert: lastestIndividuals areBetterOrEqualThan: statingIndividuals [
	| latestBetter startingBetter sorted |
	latestBetter := (self selectionStrategy sortByFitness: lastestIndividuals) first.
	startingBetter := (self selectionStrategy sortByFitness: statingIndividuals) first.
	sorted := self selectionStrategy sortByFitness: (OrderedCollection with: startingBetter with: latestBetter).
	self assert: ((OrderedCollection with: latestBetter with: startingBetter) includes: sorted first)
]

{ #category : #tests }
EvolutionaryAlgorithmTest >> assert: lastestIndividuals areBetterThan: statingIndividuals [
	| latestBetter startingBetter sorted |
	latestBetter := (self selectionStrategy sortByFitness: lastestIndividuals) first.
	startingBetter := (self selectionStrategy sortByFitness: statingIndividuals) first.
	sorted := self selectionStrategy sortByFitness: (OrderedCollection with: startingBetter with: latestBetter).
	self assert: sorted first equals: latestBetter
]

{ #category : #'private - accessing' }
EvolutionaryAlgorithmTest >> selectionStrategy [

	self subclassResponsibility
]
