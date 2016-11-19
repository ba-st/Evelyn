test
testConstantDrivingCurrent
	
	| neuron trace |
	neuron := IntegrateAndFireNeuron restingPotential: -65 membraneResistance: 90 membraneTimeConstant:
			30 thresholdPotential: -50 resetPotential: -65 spikePotential: 0.

	trace := OrderedCollection with: neuron potential.
	300
		timesRepeat:
			[neuron receive: 0.17.
			trace add: neuron potential].
	200
		timesRepeat:
			[neuron receive: 0.
			trace add: neuron potential].

	trace
		with: self expectedConstantDrivingCurrentPotentials
		do: [:obtained :expected | self assert: (obtained - expected) abs < 1000 reciprocal]