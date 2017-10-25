evaluating
numberBetween: aNumber and: anotherNumber
	| newRandom |
	newRandom := betaDistribution random * anotherNumber.
	^ (newRandom between: aNumber and: anotherNumber)
		ifTrue: [ newRandom ]
		ifFalse: [ self from: aNumber to: anotherNumber ]