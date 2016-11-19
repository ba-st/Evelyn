computing
angleTo: aPosition

	| cos |

	cos := aPosition x arcCos / (2 * Float pi).
	^ aPosition y <= 0
		ifTrue: [ cos ]
		ifFalse: [ 1 - cos ]