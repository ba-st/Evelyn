comparing
min: anAngleAndDistance

	^ self < anAngleAndDistance
		ifTrue: [ self ]
		ifFalse: [ anAngleAndDistance ]