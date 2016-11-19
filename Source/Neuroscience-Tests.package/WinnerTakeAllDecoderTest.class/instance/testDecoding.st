test
testDecoding
	
	| responses decoder winner |
	responses := population neurons collect: [:each | each responseTo: 0].
	decoder := WinnerTakeAllDecoder considering: population.

	winner := responses asSortedCollection last.

	self
		assert:
			(decoder decode: responses)
				= (population neurons at: (responses indexOf: winner)) preferredDirection