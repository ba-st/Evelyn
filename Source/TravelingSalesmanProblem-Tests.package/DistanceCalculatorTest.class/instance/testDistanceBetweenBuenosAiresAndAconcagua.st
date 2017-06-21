tests
testDistanceBetweenBuenosAiresAndAconcagua
	| distanceCalculator |
	distanceCalculator := DistanceCalculator new.
	self
		assert: (distanceCalculator distanceBetween: self buenosAires and: self aconcagua) asInteger
		equals: 1097