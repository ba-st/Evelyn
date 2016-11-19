accessing
leftOf: aFacing

	| facingIndex |

	facingIndex := directions indexOf: aFacing.
	^ facingIndex = directions size
		ifTrue: [ directions first ]
		ifFalse: [ directions at: facingIndex + 1 ]