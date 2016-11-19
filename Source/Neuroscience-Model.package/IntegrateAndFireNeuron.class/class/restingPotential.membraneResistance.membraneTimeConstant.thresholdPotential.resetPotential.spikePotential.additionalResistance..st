instance creation
restingPotential: e_l membraneResistance: r_m membraneTimeConstant: tau_m thresholdPotential: v_th resetPotential: v_reset spikePotential: v_spike additionalResistance: anAdditionalResistance
	
	^self new initializeRestingPotential: e_l membraneResistance: r_m membraneTimeConstant: tau_m
		thresholdPotential: v_th resetPotential: v_reset spikePotential: v_spike additionalResistance:
			anAdditionalResistance