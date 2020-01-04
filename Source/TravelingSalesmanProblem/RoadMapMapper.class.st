Class {
	#name : #RoadMapMapper,
	#superclass : #IndividualMapper,
	#instVars : [
		'distanceCalcularor'
	],
	#category : 'TravelingSalesmanProblem'
}

{ #category : #accessing }
RoadMapMapper >> distanceTraveledBy: aRoadMap [
	| totalDistance |
	totalDistance := 0.
	aRoadMap genotype
		with:
			(aRoadMap genotype copyWithoutFirst
				add: aRoadMap genotype first;
				yourself)
		do: [ :aCity :anotherCity | totalDistance := totalDistance + (distanceCalcularor  distanceBetween: aCity and: anotherCity) ].
	^ totalDistance
]

{ #category : #initialization }
RoadMapMapper >> initialize [
	distanceCalcularor := DistanceCalculator new
]

{ #category : #accessing }
RoadMapMapper >> mapping: aRoadMap [
	^ String
		streamContents: [ :aStream | 
			aStream nextPutAll: 'Individual: '.
			aStream nextPutAll: '[ '.
			aStream nextPutAll: aRoadMap genotype asCommaString.
			aStream nextPutAll: ' ]'.
			aStream nextPutAll: ' - distance traveled: '.
			(self distanceTraveledBy: aRoadMap) printOn: aStream ]
]
