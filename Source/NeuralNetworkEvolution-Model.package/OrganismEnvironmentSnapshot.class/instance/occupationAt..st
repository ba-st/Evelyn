accessing - private
occupationAt: aPosition

	^ occupations
		detect: [ :each | each refersTo: aPosition ]
		ifNone: [ UnusedOccupation new ]