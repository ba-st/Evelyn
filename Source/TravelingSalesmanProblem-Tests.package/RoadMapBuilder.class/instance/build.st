initialization
build
	^ RoadMap
		tour:
			((OrderedCollection with: startingCity content)
				addAll: anotherCities content shuffle;
				yourself)