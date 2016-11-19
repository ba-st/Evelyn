running
setUp
	
	distribution := CircularNormalDistribution maximalFiringRate: 50 tuningCurveWidth: 3
		spontaneousActivity: 5.

	population := DecodingPopulation ofSize: 50 meanSpikeCountsDescribedBy: distribution