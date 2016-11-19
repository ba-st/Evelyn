computing - private
calculateDistributionRelatedTo: anAngle
	
	^PoissonDistribution lambda: (self meanResponseTo: anAngle)