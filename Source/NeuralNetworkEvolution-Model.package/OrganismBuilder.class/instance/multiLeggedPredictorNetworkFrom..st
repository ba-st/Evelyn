organism building - private
multiLeggedPredictorNetworkFrom: aGenotype

	^ NeuralNetworkBuilder new
		use: aGenotype;
		addLayerOf: 5;
		addLayerOf: 7;
		addLayerOf: 5;
		buildWithBackpropagation