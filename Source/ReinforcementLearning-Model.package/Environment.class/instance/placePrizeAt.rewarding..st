accessing
placePrizeAt: aLocation rewarding: aScore

	| prize |
	prize := Prize rewarding: aScore.

	prizeLocations at: aLocation put: prize.
	grid at: aLocation put: prize