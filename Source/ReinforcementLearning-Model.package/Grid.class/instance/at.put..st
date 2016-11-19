accessing
at: aPoint put: anElement

	( ( yAxis at: aPoint y ) at: aPoint x ) isEmpty
		ifFalse: [ self error: 'Location not empty!' ].

	( yAxis at: aPoint y ) at: aPoint x
		put: ( OccupiedLocation containing: anElement ).

	knownLocations at: anElement put: aPoint