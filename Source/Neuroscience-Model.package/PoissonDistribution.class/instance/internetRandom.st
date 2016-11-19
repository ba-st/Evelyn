information
internetRandom
	
	| eventsObserved productOfRandoms |
	eventsObserved := 1.
	productOfRandoms := randomProvider random.
	[productOfRandoms < eRaisedToMinusLambda]
		whileFalse:
			[eventsObserved := eventsObserved + 1.
			productOfRandoms := productOfRandoms * randomProvider random].
	^eventsObserved - 1