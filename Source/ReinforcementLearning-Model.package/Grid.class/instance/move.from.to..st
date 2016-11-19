processing - private
move: anAgent from: currentLocation to: newLocation

	knownLocations at: anAgent put: newLocation.

	(yAxis at: currentLocation y) at: currentLocation x put: EmptyLocation new.
	(yAxis at: newLocation y) at: newLocation x
		put: (OccupiedLocation containing: anAgent)