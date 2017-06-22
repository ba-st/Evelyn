tests
testWhenMutateThenSomeGenomaSwapWithAnother
	| mutator roadMap mutatedRoadMap |
	mutator := SwapMutation new.
	roadMap := RoadMap
		tour:
			(OrderedCollection
				with: self buenosAires
				with: self aconcagua
				with: self sanCarlosDeBariloche
				with: self ushuaia
				with: self villaCarlosPaz).
	mutatedRoadMap := mutator mutatedVersionOf: roadMap.
	self deny: roadMap genotype = mutatedRoadMap genotype