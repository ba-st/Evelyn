tests
testDistanceBetweenBuenosAiresAndRosarioAndViseVersa
	| distanceCalculator |
	distanceCalculator := DistanceCalculator new.
	self assert: (distanceCalculator distanceBetween: self buenosAires and: self sanCarlosDeBariloche) equals: (distanceCalculator distanceBetween: self sanCarlosDeBariloche and: self buenosAires)