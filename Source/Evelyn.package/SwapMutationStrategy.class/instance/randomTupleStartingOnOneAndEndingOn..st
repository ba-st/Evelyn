private - building
randomTupleStartingOnOneAndEndingOn: aMax

	| firstRandom secondRandom |

	"Select two different numbers between 1 and aMax. 
	If the numbers are the same, select again"
	firstRandom := self numberBetween1And: aMax.
	secondRandom := self numberBetween1And: aMax.
	^ firstRandom = secondRandom
		ifTrue: [ self randomTupleStartingOnOneAndEndingOn: aMax ]
		ifFalse: [ firstRandom @ secondRandom ]