computing - private
checkForSpike
	
	potential >= thresholdPotential
		ifTrue:
			[potential := spikePotential.
			additionalResistance notifySpike]