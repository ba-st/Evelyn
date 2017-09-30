building
build
	^ RoadMap
		tour:
			((OrderedCollection with: startingCityBinding content)
				addAll: anotherCitiesBinding content shuffle;
				yourself)