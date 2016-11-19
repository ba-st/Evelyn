organism building - private
predictorNetworkFrom: aGenotype

	^ NeuralNetworkBuilder new
		use: aGenotype;
		addLayerOf: 4;
		addLayerOf: 7;
		addLayerOf: 4;
		buildWithBackpropagation