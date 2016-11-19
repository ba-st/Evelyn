test
testConstantDrivingCurrentWithSpikeRateAdaptation
	
	| spikeRateAdaptation neuron trace |
	spikeRateAdaptation := SpikeRateAdaptation timeConstant: 100 resistance: 0.6
		hyperpolarizingCurrent: -70.
	neuron := IntegrateAndFireNeuron restingPotential: -65 membraneResistance: 90 membraneTimeConstant:
			30 thresholdPotential: -50 resetPotential: -65 spikePotential: 0 additionalResistance:
			spikeRateAdaptation.

	trace := OrderedCollection with: neuron potential.
	300
		timesRepeat:
			[neuron receive: 0.3.
			trace add: neuron potential].
	200
		timesRepeat:
			[neuron receive: 0.
			trace add: neuron potential].

	trace
		with: self expectedConstantDrivingCurrentPotentialsWithSpikeRateAdaptation
		do: [:obtained :expected | self assert: (obtained - expected) abs < 1000 reciprocal]