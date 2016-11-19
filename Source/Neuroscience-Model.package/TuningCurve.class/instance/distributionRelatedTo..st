computing - private
distributionRelatedTo: anAngle
	
	^distributions at: anAngle ifAbsentPut: [self calculateDistributionRelatedTo: anAngle]