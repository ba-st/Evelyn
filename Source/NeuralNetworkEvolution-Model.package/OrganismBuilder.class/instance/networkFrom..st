organism building - private
networkFrom: aGenotype

	^ NeuralNetworkBuilder new
		use: aGenotype;
		addLayerOf: 4;
		addLayerOf: 7;
		addLayerOf: 2;
		build