evaluating
updatePredictorWeights

	self neurons with: sensitivities do: [ :neuron :sensitivity | neuron updateWeightsUsing: sensitivity ]