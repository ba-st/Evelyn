instance creation
instance

	SoleInstance isNil
		ifTrue: [ SoleInstance := self new initialize ].
	^ SoleInstance