initialize-release
initializeTimeConstant: tau_sra resistance: r_mDg_sra hyperpolarizingCurrent: e_k
	
	timeConstant := tau_sra.
	resistanceIncrementWhenSpiking := r_mDg_sra.
	hyperpolarizingCurrent := e_k.

	adaptation := 0.
	resistance := 0