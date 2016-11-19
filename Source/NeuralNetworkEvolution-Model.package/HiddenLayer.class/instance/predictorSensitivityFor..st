evaluating
predictorSensitivityFor: feededLayerSensitivities

	sensitivities := OrderedCollection new.
	neurons do: [ :neuron | sensitivities add: (neuron predictorSensitivityFor: feededLayerSensitivities) ].
	^ sensitivities