Class {
	#name : #TravelingSalesmanProblemTest,
	#superclass : #EvolutionaryAlgorithmTest,
	#instVars : [
		'startingIndividuals',
		'cityFactory'
	],
	#category : 'TravelingSalesmanProblem-Tests'
}

{ #category : #accessing }
TravelingSalesmanProblemTest >> experimentContext [
	^ EvolutionaryAlgorithmContextBuilder new
		configureCrossOverStrategyTo: TravelingSalesmanCrossOverStrategy new;
		configureMutationStrategyTo:
			(SwapMutationStrategy
				generating: RoadMap
				with: (PercentageProbability of: 100)
				randomizedUsing: self randomProvider);
		configureSurvivorsSelectionStrategyTo: self selectionStrategy;
		build
]

{ #category : #accessing }
TravelingSalesmanProblemTest >> generateStartingIndividuals [
	| individuals |
	individuals := OrderedCollection new.
	10 timesRepeat: [ individuals add: (self roadMapStartingOn: cityFactory buenosAires nextCitiesToVisit: self otherCities) ].
	^ individuals
]

{ #category : #accessing }
TravelingSalesmanProblemTest >> otherCities [
	^ OrderedCollection
		with: cityFactory aconcagua
		with: cityFactory sanCarlosDeBariloche
		with: cityFactory ushuaia
		with: cityFactory villaCarlosPaz
]

{ #category : #accessing }
TravelingSalesmanProblemTest >> randomProvider [
	^ NormalDistributionRandomProvider definedMu: 5 andSigma: 1 
]

{ #category : #accessing }
TravelingSalesmanProblemTest >> roadMapStartingOn: firstCity nextCitiesToVisit: aCollectionOfCities [
	^ RoadMap
		touringThrough:
			((OrderedCollection with: firstCity)
				addAll: aCollectionOfCities shuffle;
				yourself)
]

{ #category : #accessing }
TravelingSalesmanProblemTest >> selectionStrategy [

	^ TravelingSalesmanSelectionStrategy surviving: 40 / 100
]

{ #category : #initialization }
TravelingSalesmanProblemTest >> setUp [
	cityFactory := CityFactory new.
	startingIndividuals := self generateStartingIndividuals
]

{ #category : #tests }
TravelingSalesmanProblemTest >> testFindShortestRoadMap [
	| lastGeneration |
	lastGeneration := (EvolutionaryAlgorithm startingWith: startingIndividuals using: self experimentContext) lastGeneration.
	self assert: lastGeneration individuals areBetterThan: startingIndividuals
]
