Class {
	#name : #LowerNumbersTest,
	#superclass : #EvolutionaryAlgorithmTest,
	#instVars : [
		'startingIndividuals'
	],
	#category : 'NumericEvolution-Tests-Extremum'
}

{ #category : #accessing }
LowerNumbersTest >> experimentContext [
	^ EvolutionaryAlgorithmContextBuilder forNumercialFunctions
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		build
]

{ #category : #accessing }
LowerNumbersTest >> generateStartingIndividuals [
	| individuals |
	individuals := OrderedCollection new.
	10 timesRepeat: [ individuals add: NumericIndividualBuilder new build ].
	^ individuals
]

{ #category : #accessing }
LowerNumbersTest >> selectionStrategy [

	^ LowerNumbersSelection surviving: 40 / 100
]

{ #category : #accessing }
LowerNumbersTest >> setUp [
	startingIndividuals := self generateStartingIndividuals
]

{ #category : #'tests experiment' }
LowerNumbersTest >> testFindMinimumValue [
	| lastGeneration |
	lastGeneration := (EvolutionaryAlgorithm startingWith: startingIndividuals using: self experimentContext) lastGeneration.
	self assert: lastGeneration individuals areBetterThan: startingIndividuals
]

{ #category : #'tests selection' }
LowerNumbersTest >> testSelectTwoSurvivorsFromFiveIndividuals [

	| survivors numericIndividuals numericalIndividualFactory |

	numericalIndividualFactory := NumericIndividualFactory new.
	numericIndividuals := OrderedCollection
		with: numericalIndividualFactory one
		with: numericalIndividualFactory two
		with: numericalIndividualFactory three
		with: numericalIndividualFactory four
		with: numericalIndividualFactory five.
	survivors := self selectionStrategy selectSurvivorsFrom: numericIndividuals.
	self
		assert: survivors size equals: 2;
		assert: (survivors at: 1) number equals: 1;
		assert: (survivors at: 2) number equals: 2
]

{ #category : #'tests selection' }
LowerNumbersTest >> testSortIndivicuals [

	| sortedIndividuals numericIndividuals numericalIndividualFactory |

	numericalIndividualFactory := NumericIndividualFactory new.
	numericIndividuals := OrderedCollection
		with: numericalIndividualFactory three
		with: numericalIndividualFactory two
		with: numericalIndividualFactory five
		with: numericalIndividualFactory four.
	sortedIndividuals := self selectionStrategy sortByFitness: numericIndividuals.
	self
		assert: (sortedIndividuals at: 1) number equals: 2;
		assert: (sortedIndividuals at: 2) number equals: 3;
		assert: (sortedIndividuals at: 3) number equals: 4;
		assert: (sortedIndividuals at: 4) number equals: 5
]
