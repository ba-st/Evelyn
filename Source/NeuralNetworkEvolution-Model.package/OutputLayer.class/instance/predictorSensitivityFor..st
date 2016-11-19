evaluating
predictorSensitivityFor: errors

	sensitivities := OrderedCollection new.
	(neurons copyFrom: 1 to: 2) with: errors do: [ :neuron :error | sensitivities add: (neuron derivativeActivationFunctionAppliedTo: neuron lastComputedNetOutput) * error * -2 ].
	^ sensitivities