testing - private
isAvailable: aLocation

	^((mineLocations includes: aLocation)
		or: [aLocation = startingLocation or: [objectives includes: aLocation]]) not