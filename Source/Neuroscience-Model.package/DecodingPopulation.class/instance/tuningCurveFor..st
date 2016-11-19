accessing - private
tuningCurveFor: index
	
	^TuningCurve meanSpikeCountDescribedBy: distribution preferredDirection: -180 + (step * index)