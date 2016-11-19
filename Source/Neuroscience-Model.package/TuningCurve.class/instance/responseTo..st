computing
responseTo: anAngle
	
	| randomProvider |
	randomProvider := self distributionRelatedTo: anAngle.

	^randomProvider random