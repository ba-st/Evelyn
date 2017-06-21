tests
testDistanceBetweenBuenosAiresAndRosario
	| distanceCalculator |
	distanceCalculator := DistanceCalculator new.
	self
		assert: (distanceCalculator distanceBetween: self buenosAires  and: self sanCarlosDeBariloche ) asInteger 
		equals: 1344