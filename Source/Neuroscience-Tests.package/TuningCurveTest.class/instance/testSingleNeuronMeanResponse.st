test
testSingleNeuronMeanResponse
	
	| curve |
	curve := TuningCurve meanSpikeCountDescribedBy: distribution preferredDirection: 0.
	self assert: (curve meanResponseTo: 0) = 55.

	curve := TuningCurve meanSpikeCountDescribedBy: distribution preferredDirection: 60.
	self assert: (curve meanResponseTo: -60) - 33.6331723 < 100000 reciprocal