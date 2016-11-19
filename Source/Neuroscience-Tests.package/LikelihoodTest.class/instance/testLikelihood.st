test
testLikelihood
	
	| likelihood |
	likelihood := Likelihood
		of: self population
		generating: self response
		whenPresentedWith: 0.

	self
		assert: likelihood probability <= 1;
		assert: 1 - likelihood probability < 100 reciprocal