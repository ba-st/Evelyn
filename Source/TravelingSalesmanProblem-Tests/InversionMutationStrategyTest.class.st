Class {
	#name : #InversionMutationStrategyTest,
	#superclass : #TestCase,
	#instVars : [
		'cityFactory'
	],
	#category : 'TravelingSalesmanProblem-Tests'
}

{ #category : #accessing }
InversionMutationStrategyTest >> randomProvider [
	^ NormalDistributionRandomProvider definedMu: 5 andSigma: 1 
]

{ #category : #initialization }
InversionMutationStrategyTest >> setUp [
	cityFactory := CityFactory new
]

{ #category : #test }
InversionMutationStrategyTest >> testWhenMutateThenSomeGenomeSwapWithAnother [
	| mutationStrategy roadMap mutatedRoadMap |
	mutationStrategy := InversionMutationStrategy
		generating: RoadMap
		with: (PercentageProbability of: 100)
		randomizedUsing: self randomProvider.
	roadMap := RoadMap
		touringThrough:
			(OrderedCollection
				with: cityFactory buenosAires
				with: cityFactory aconcagua
				with: cityFactory sanCarlosDeBariloche
				with: cityFactory ushuaia
				with: cityFactory villaCarlosPaz).
	mutatedRoadMap := mutationStrategy
		onGeneration: 1
		mutate: (OrderedCollection with: roadMap).
	self deny: roadMap genotype = mutatedRoadMap anyOne genotype
]
