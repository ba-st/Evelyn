computing
dualAngleTo: aPosition

	^ (aPosition y < 0
		ifTrue: [ -1 ]
		ifFalse: [ 1 ]) * aPosition x arcCos / Float pi