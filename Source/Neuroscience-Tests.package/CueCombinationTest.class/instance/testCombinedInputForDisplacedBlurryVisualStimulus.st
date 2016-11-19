test
testCombinedInputForDisplacedBlurryVisualStimulus
	
	| distribution statistics |
	distribution := CueCombination
		merging: (DhbNormalDistribution new: 5 sigma: 20)
		with: (DhbNormalDistribution new: -5 sigma: 3).
	statistics := DhbStatisticalMoments new.

	(-25 to: 25)
		do:
			[:position | 
			| likelihood |
			likelihood := distribution value: position.
			statistics accumulate: likelihood].

	self
		assert: (distribution average - -4.78) abs < 10 reciprocal;
		assert: (distribution standardDeviation - 8.8 sqrt) abs < 10 reciprocal