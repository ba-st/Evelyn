test
testLargePresynapticConductance
	
	| presynapticConductance neuron trace |
	presynapticConductance := SynapticConductance
		timeConstant: 10
		resistance: 0.35
		inhibitoryCurrent: 0
		weightWhenSpiking: 1
		relatedTo: (SpikeTrain withRate: 100 dividedInto: 1000).
	neuron := IntegrateAndFireNeuron restingPotential: -65 membraneResistance: 90 membraneTimeConstant:
			30 thresholdPotential: -50 resetPotential: -65 spikePotential: 0 additionalResistance:
			presynapticConductance.

	trace := OrderedCollection with: neuron potential.
	1000
		timesRepeat:
			[neuron receive: 0.
			trace add: neuron potential].

	self assert: ((trace select: [:each | each = 0]) size between: 10 and: 100)