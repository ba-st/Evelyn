accessing
nextMineLocation

	| region |
	region := randomNumberProvider random.

	^region < (1 / 2)
		ifTrue: [self nextMineInMiddleLeftLocation]
		ifFalse: [self nextMineInMiddleRightLocation]