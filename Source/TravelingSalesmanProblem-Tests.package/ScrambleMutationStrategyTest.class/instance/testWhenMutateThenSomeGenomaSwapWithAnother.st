accessing
testWhenMutateThenSomeGenomaSwapWithAnother
	| mutationStrategy roadMap mutatedRoadMap |
	mutationStrategy := SwapMutationStrategy mutationRate: AlwaysTrue new andRandomized: self randomProvider generate: RoadMap.
	roadMap := RoadMap
		tour:
			(OrderedCollection
				with: self buenosAires
				with: self aconcagua
				with: self sanCarlosDeBariloche
				with: self ushuaia
				with: self villaCarlosPaz).
	mutatedRoadMap := mutationStrategy onGeneration: 1 mutate: (OrderedCollection with: roadMap).
	self deny: roadMap genotype = mutatedRoadMap anyOne genotype