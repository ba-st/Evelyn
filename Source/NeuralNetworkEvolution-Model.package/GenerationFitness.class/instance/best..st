accessing
best: aNumberOfWinners

	fitnesses sortBlock: [ :a :b | a > b ].
	self registerStatistics.
	^ fitnesses first: aNumberOfWinners