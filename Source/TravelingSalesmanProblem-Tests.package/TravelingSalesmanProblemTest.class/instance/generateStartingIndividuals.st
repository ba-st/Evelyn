tests
generateStartingIndividuals
	| individuals |
	individuals := OrderedCollection new.
	10
		timesRepeat: [ individuals
				add:
					(RoadMapBuilder new
						startingOn: citiesFactory buenosAires;
						nextCitiesToVisit: self otherCities;
						build) ].
	^ individuals