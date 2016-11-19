computing
resist: aPotential
	
	| increment |
	increment := adaptation negated / timeConstant.
	adaptation := adaptation + increment.

	resistance := (aPotential - hyperpolarizingCurrent) * adaptation