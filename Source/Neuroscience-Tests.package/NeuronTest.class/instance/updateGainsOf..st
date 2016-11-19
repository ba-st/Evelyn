test support
updateGainsOf: population
	
	population neurons
		do:
			[:each | 
			| formula newGain |
			formula := AdaptationEffectFormula affecting: each amountOfSuppression: 0.85 spatialExtent: 22.5.
			newGain := formula evaluateOn: 0.
			each updateGainTo: newGain]