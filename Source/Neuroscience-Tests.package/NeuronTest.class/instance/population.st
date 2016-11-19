test support
population
	
	| distribution |
	distribution := CircularNormalDistribution maximalFiringRate: 50 tuningCurveWidth: 3
		spontaneousActivity: 5.

	^DecodingPopulation ofSize: 50 meanSpikeCountsDescribedBy: distribution