initialize-release
initializeOfSize: aPopulationSize meanSpikeCountsDescribedBy: aCircularDistribution
	
	size := aPopulationSize.
	distribution := aCircularDistribution.

	self initializeStep.
	self initializeNeurons