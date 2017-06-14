test
testAuditoryInput
	
	| distribution statistics |
	distribution := DhbNormalDistribution new: -5 sigma: 3.
	statistics := DhbStatisticalMoments new.

	(-25 to: 25)
		do:
			[:position | 
			| likelihood |
			likelihood := distribution value: position.
			statistics accumulate: likelihood].

	self
		assert: distribution average = -5;
		assert: distribution standardDeviation = 3