instance creation
from: fromNumber to: toNumber
	| newRandom |
	newRandom := (DhbNormalDistribution new: toNumber / 2 rounded sigma: 1) random rounded.
	^ (newRandom >= fromNumber and: [ newRandom <= toNumber ])
		ifTrue: [ newRandom ]
		ifFalse: [ self from: fromNumber to: toNumber ]