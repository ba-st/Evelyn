instance creation
instance

	SoleInstance isNil
		ifTrue: [ SoleInstance := super new initialize ].
	^ SoleInstance