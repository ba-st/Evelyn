Class {
	#name : #RoadMapTest,
	#superclass : #TestCase,
	#instVars : [
		'cityFactory'
	],
	#category : 'TravelingSalesmanProblem-Tests'
}

{ #category : #initialization }
RoadMapTest >> setUp [
	cityFactory := CityFactory new
]

{ #category : #tests }
RoadMapTest >> testGenotype [
	| roadMap |
	roadMap := RoadMap touringThrough: (OrderedCollection with: cityFactory aconcagua with: cityFactory buenosAires).
	self assertCollection: roadMap genotype equals: (OrderedCollection with: cityFactory aconcagua with: cityFactory buenosAires)
]
