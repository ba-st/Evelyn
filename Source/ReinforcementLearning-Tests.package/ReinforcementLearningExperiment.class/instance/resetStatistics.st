initialize-release
resetStatistics

"	DhbNormalDistribution resetNextRandom.
	Esto ya no existe en Dhb Numerics"
	DhbMitchellMooreGenerator reset: 1.
	accumulatedNumberOfMoves := accumulatedNumberOfMoves
		collect: [ :accumulatedNumber | 0 ].
	accumulatedProcessingTime := accumulatedProcessingTime
		collect: [ :accumulatedTime | 0 ]