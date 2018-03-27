tests
testGenotype
	| roadMap |
	roadMap := RoadMap touringThrough: (OrderedCollection with: cityFactory aconcagua with: cityFactory buenosAires).
	self assertCollection: roadMap genotype equals: (OrderedCollection with: cityFactory aconcagua with: cityFactory buenosAires)