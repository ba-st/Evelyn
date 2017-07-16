building
randomTupleStartingOnOneAndEndingOn: aMax
	| firstRandom secondRandom |
	firstRandom := self nextRandomFromOneTo: aMax.
	secondRandom := self nextRandomFromOneTo: aMax.
	^ firstRandom = secondRandom
		ifTrue: [ self randomTupleStartingOnOneAndEndingOn: aMax ]
		ifFalse: [ firstRandom @ secondRandom ]