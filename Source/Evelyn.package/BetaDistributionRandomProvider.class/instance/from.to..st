evaluating
from: fromNumber to: toNumber
	| newRandom |
	newRandom := dhbBetaDistribution random * toNumber.
	^ (newRandom >= fromNumber and: [ newRandom <= toNumber ])
		ifTrue: [ newRandom ]
		ifFalse: [ self from: fromNumber to: toNumber step: 1 ]