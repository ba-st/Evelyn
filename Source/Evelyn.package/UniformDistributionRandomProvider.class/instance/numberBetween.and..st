evaluating
numberBetween: aNumber and: anotherNumber
	^ (self checkLimitsBetween: aNumber and: anotherNumber)
		ifTrue: [ uniformDistribution random ]
		ifFalse: [ ValueNotFound signal: 'Invalids limits' ]