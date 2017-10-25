evaluating
numberBetween: aNumber and: anotherNumber
	| newRandom |
	newRandom := normalDistribution random rounded.
	^ (newRandom between: aNumber and: anotherNumber)
		ifTrue: [ newRandom ]
		ifFalse: [ self numberBetween: aNumber and: anotherNumber ]