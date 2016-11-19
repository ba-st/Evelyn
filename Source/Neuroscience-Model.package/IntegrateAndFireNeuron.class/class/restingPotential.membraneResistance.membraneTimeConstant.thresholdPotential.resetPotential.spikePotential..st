instance creation
restingPotential: e_l membraneResistance: r_m membraneTimeConstant: tau_m thresholdPotential: v_th resetPotential: v_reset spikePotential: v_spike
	
	^self
		restingPotential: e_l
		membraneResistance: r_m
		membraneTimeConstant: tau_m
		thresholdPotential: v_th
		resetPotential: v_reset
		spikePotential: v_spike
		additionalResistance: (SpikeRateAdaptation timeConstant: 1 resistance: 0 hyperpolarizingCurrent: 0)