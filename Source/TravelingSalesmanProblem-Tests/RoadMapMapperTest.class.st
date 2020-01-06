Class {
	#name : #RoadMapMapperTest,
	#superclass : #TestCase,
	#instVars : [
		'cityFactory'
	],
	#category : 'TravelingSalesmanProblem-Tests'
}

{ #category : #initialization }
RoadMapMapperTest >> setUp [
	cityFactory := CityFactory new
]

{ #category : #tests }
RoadMapMapperTest >> testRecord [
	| roadMap |
	roadMap := RoadMap touringThrough: (OrderedCollection with: cityFactory aconcagua with: cityFactory buenosAires).
	self assert: (RoadMapMapper new mapping: roadMap) equals: 'Individual: [ Aconcagua, Buenos Aires ] - distance traveled: 2195.214894682301'
]
