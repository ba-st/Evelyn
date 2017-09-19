evaluating - private
from: fromNumber to: toNumber step: anStep
	| newRandom |
	newRandom := dhbBetaDistribution random * toNumber.
	^ (newRandom >= fromNumber and: [ newRandom <= toNumber ])
		ifTrue: [ newRandom ]
		ifFalse: [ anStep < 100
				ifTrue: [ self from: fromNumber to: toNumber step: anStep + 1 ]
				ifFalse: [ Error signal.
					self toDo ] ]