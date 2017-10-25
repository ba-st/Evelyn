accessing
roadMapStartingOn: firstCity nextCitiesToVisit: aCollectionOfCities
	^ RoadMap
		touringThrough:
			((OrderedCollection with: firstCity)
				addAll: aCollectionOfCities shuffle;
				yourself)