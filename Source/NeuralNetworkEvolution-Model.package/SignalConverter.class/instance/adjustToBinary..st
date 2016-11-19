converting - private
adjustToBinary: aNumber

	^ aNumber < 0.5
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]