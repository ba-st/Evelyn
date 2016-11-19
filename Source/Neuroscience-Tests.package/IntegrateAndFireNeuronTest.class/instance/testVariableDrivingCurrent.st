test
testVariableDrivingCurrent
	
	| neuron trace |
	neuron := IntegrateAndFireNeuron restingPotential: -65 membraneResistance: 10 membraneTimeConstant:
			10 thresholdPotential: -50 resetPotential: -65 spikePotential: 0.

	trace := OrderedCollection with: neuron potential.
	self oscilatingValues
		do:
			[:each | 
			neuron receive: each.
			trace add: neuron potential].
	200
		timesRepeat:
			[neuron receive: 0.
			trace add: neuron potential].

	trace
		with: self expectedVariableDrivingCurrentPotentials
		do: [:obtained :expected | self assert: (obtained - expected) abs < 1000 reciprocal]