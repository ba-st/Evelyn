converting
newGain: g
	
	^self class
		meanSpikeCountDescribedBy: (meanSpikeCount newMaximalFiringRate: g)
		preferredDirection: preferredDirection