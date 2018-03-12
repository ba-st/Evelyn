private - building
randomTupleStartingOnOneAndEndingOn: aMax
	| firstRandom secondRandom |
	firstRandom := self numberBetween1And: aMax.
	secondRandom := self numberBetween1And: aMax.
	^ firstRandom = secondRandom
		ifTrue: [ self randomTupleStartingOnOneAndEndingOn: aMax ]
		ifFalse: [ firstRandom @ secondRandom ]