tests
testGenotype
	| roadMap |
	roadMap := RoadMap tour: (OrderedCollection with: self aconcagua with: self buenosAires).
	self assertCollection: roadMap genotype equals: (OrderedCollection with: self aconcagua with: self buenosAires)