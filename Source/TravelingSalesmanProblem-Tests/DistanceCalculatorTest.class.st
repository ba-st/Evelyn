Class {
	#name : #DistanceCalculatorTest,
	#superclass : #TestCase,
	#instVars : [
		'cityFactory'
	],
	#category : 'TravelingSalesmanProblem-Tests'
}

{ #category : #initialization }
DistanceCalculatorTest >> setUp [
	cityFactory := CityFactory new
]

{ #category : #tests }
DistanceCalculatorTest >> testDistanceBetweenCities [
	| distanceCalculator buenosAires villaCarlosPaz aconcagua |
	distanceCalculator := DistanceCalculator new.
	buenosAires := cityFactory buenosAires.
	villaCarlosPaz := cityFactory villaCarlosPaz.
	aconcagua := cityFactory aconcagua. 
	self assert: ((distanceCalculator distanceBetween: buenosAires and: aconcagua) closeTo: 1097 precision: 0.001).
	self assert: ((distanceCalculator distanceBetween: buenosAires and: villaCarlosPaz) closeTo: 671 precision: 0.001).
	self assert: ((distanceCalculator distanceBetween: aconcagua and: villaCarlosPaz) closeTo: 537 precision: 0.001).
	self assert: ((distanceCalculator distanceBetween: aconcagua and: buenosAires) closeTo: 1097 precision: 0.001).
]
