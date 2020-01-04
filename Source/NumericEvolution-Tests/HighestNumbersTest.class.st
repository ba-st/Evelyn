Class {
	#name : #HighestNumbersTest,
	#superclass : #EvolutionaryAlgorithmTest,
	#category : 'NumericEvolution-Tests-Extremum'
}

{ #category : #'private - accessing' }
HighestNumbersTest >> experimentContext [
	^ EvolutionaryAlgorithmContextBuilder forNumercialFunctions
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		build
]

{ #category : #'private - accessing' }
HighestNumbersTest >> generateStartingIndividuals [
	| individuals |
	individuals := OrderedCollection new.
	10 timesRepeat: [ individuals add: NumericIndividualBuilder new build ].
	^ individuals
]

{ #category : #'private - accessing' }
HighestNumbersTest >> selectionStrategy [

	^ HighestNumbersSelection surviving: 40 / 100
]

{ #category : #'tests experiment' }
HighestNumbersTest >> testFindMaximalValue [

	| startingIndividuals lastGeneration |

	startingIndividuals := self generateStartingIndividuals.
	lastGeneration := (EvolutionaryAlgorithm startingWith: startingIndividuals using: self experimentContext) lastGeneration.
	self assert: lastGeneration individuals areBetterThan: startingIndividuals
]

{ #category : #'test selection' }
HighestNumbersTest >> testSelectTwoSurvivorsFromFiveIndividuals [

	| survivors numericIndividuals numericalIndividualFactory |

	numericalIndividualFactory := NumericIndividualFactory new.
	numericIndividuals := OrderedCollection
		with: numericalIndividualFactory five
		with: numericalIndividualFactory four
		with: numericalIndividualFactory three
		with: numericalIndividualFactory two
		with: numericalIndividualFactory one.
	survivors := self selectionStrategy selectSurvivorsFrom: numericIndividuals.
	self
		assert: survivors size equals: 2;
		assert: (survivors at: 1) number equals: 5;
		assert: (survivors at: 2) number equals: 4
]

{ #category : #'test selection' }
HighestNumbersTest >> testSortIndivicuals [

	| sortedIndividuals numericIndividuals numericalIndividualFactory |

	numericalIndividualFactory := NumericIndividualFactory new.
	numericIndividuals := OrderedCollection
		with: numericalIndividualFactory three
		with: numericalIndividualFactory two
		with: numericalIndividualFactory five
		with: numericalIndividualFactory four.
	sortedIndividuals := self selectionStrategy sortByFitness: numericIndividuals.
	self
		assert: (sortedIndividuals at: 1) number equals: 5;
		assert: (sortedIndividuals at: 2) number equals: 4;
		assert: (sortedIndividuals at: 3) number equals: 3;
		assert: (sortedIndividuals at: 4) number equals: 2
]
