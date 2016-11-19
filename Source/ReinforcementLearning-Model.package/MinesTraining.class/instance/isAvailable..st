testing - private
isAvailable: aLocation

	^((mineLocations includes: aLocation)
		or: [aLocation = startingLocation or: [aLocation = exitLocation]]) not