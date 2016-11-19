evaluating
updatePredictorWeights

	(self neurons copyFrom: 1 to: 2) with: sensitivities do: [ :neuron :sensitivity | neuron updateWeightsUsing: sensitivity ]