printing - private
printPosition: aPosition on: aStream

	aStream space.
	(self occupationAt: aPosition) printOn: aStream