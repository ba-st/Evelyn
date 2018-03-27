tests
testRecord
	| roadMap |
	roadMap := RoadMap touringThrough: (OrderedCollection with: cityFactory aconcagua with: cityFactory buenosAires).
	self assert: (RoadMapMapper new mapping: roadMap) equals: 'Record: RoadMap: an Array(Aconcagua Buenos Aires) - distance traveled: 2195.214894682301'