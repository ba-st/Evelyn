accessing
rightOf: aFacing

	| facingIndex |

	facingIndex := directions indexOf: aFacing.
	^ facingIndex = 1
		ifTrue: [ directions last ]
		ifFalse: [ directions at: facingIndex - 1 ]