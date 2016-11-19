organism building - private
multiLeggedNetworkFrom: aGenotype

	^ NeuralNetworkBuilder new
		use: aGenotype;
		addLayerOf: 5;
		addLayerOf: 7;
		addLayerOf: 3;
		build