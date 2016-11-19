printing - private
printPosition: aPosition on: aStream

	aStream space.
	(occupations detect: [ :each | each refersTo: aPosition ] ifNone: [ UnusedOccupation new ])
		printOn: aStream