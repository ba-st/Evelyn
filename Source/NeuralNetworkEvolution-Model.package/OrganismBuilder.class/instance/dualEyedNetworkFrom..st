organism building - private
dualEyedNetworkFrom: aGenotype

	^ NeuralNetworkBuilder new
		use: aGenotype;
		addLayerOf: 5;
		addLayerOf: 7;
		addLayerOf: 2;
		build