computing
resist: aPotential
	
	| increment |
	increment := adaptation negated / timeConstant.

	spikeTrain fires ifTrue: [adaptation := weightWhenSpiking].

	adaptation := adaptation + increment.

	resistance := (aPotential - inhibitoryCurrent) * adaptation