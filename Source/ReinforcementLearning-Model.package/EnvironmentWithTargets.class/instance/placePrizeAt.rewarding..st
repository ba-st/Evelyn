accessing
placePrizeAt: aLocation rewarding: aScore

	aScore > 0 ifTrue:[targets add: aLocation].
	environment placePrizeAt: aLocation rewarding: aScore