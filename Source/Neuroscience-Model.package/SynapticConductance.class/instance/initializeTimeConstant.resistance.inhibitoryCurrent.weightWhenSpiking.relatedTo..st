initialize-release
initializeTimeConstant: tau_s resistance: r_mG_s inhibitoryCurrent: e_s weightWhenSpiking: p_s_reset relatedTo: aSpikeTrain
	
	timeConstant := tau_s.
	resistance := r_mG_s.
	inhibitoryCurrent := e_s.
	weightWhenSpiking := p_s_reset.
	spikeTrain := aSpikeTrain.

	adaptation := 0.
	resistance := 0