test
testCombinedInputForDisplacedPreciseVisualStimulus
	
	| distribution statistics |
	distribution := CueCombination
		merging: (DhbNormalDistribution new: 5 sigma: 1)
		with: (DhbNormalDistribution new: -5 sigma: 3).
	statistics := DhbStatisticalMoments new.

	(-25 to: 25)
		do:
			[:position | 
			| likelihood |
			likelihood := distribution value: position.
			statistics accumulate: likelihood].

	self
		assert: (distribution average - 4) abs < 10 reciprocal;
		assert: (distribution standardDeviation - 0.9 sqrt) abs < 10 reciprocal