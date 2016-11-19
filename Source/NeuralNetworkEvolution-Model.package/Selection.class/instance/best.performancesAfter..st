processing
best: aNumberOfWinners performancesAfter: aNumberOfActions

	self processAndRegister: aNumberOfActions.
	^ self top: aNumberOfWinners