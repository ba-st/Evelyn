accessing
nextMineLocation

	| region |
	region := randomNumberProvider random.

	region < (7 / 10) ifTrue: [^self nextMineInUpperLeftLocation].
	region < (9 / 10) ifTrue: [^self nextMineInLowerRightLocation].
	^self nextMineAnywhere