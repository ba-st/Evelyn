accessing
distanceTraveledBy: aRoadMap
	| totalDistance |
	totalDistance := 0.
	aRoadMap genotype
		with:
			(aRoadMap genotype copyWithoutFirst
				add: aRoadMap genotype first;
				yourself)
		do: [ :aCity :anotherCity | totalDistance := totalDistance + (distanceCalcularor  distanceBetween: aCity and: anotherCity) ].
	^ totalDistance