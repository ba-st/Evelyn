test
testCombinedInput
	
	| distribution statistics |
	distribution := CueCombination
		merging: (DhbNormalDistribution new: 5 sigma: 4)
		with: (DhbNormalDistribution new: -5 sigma: 3).
	statistics := DhbStatisticalMoments new.

	(-25 to: 25)
		do:
			[:position | 
			| likelihood |
			likelihood := distribution value: position.
			statistics accumulate: likelihood].

	self
		assert: (distribution average - -1.4) abs < 10 reciprocal;
		assert: (distribution standardDeviation - 5.76 sqrt) abs < 10 reciprocal