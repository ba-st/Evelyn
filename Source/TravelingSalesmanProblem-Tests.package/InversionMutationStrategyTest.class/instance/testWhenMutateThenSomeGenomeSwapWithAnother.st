test
testWhenMutateThenSomeGenomeSwapWithAnother
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