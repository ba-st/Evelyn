network building
addLayerOf: aNumberOfNeurons

	layers add: (self nextLayer using: aNumberOfNeurons connectedTo: neuronsConnectedToNextLayer configuredBy: remainingGenes).
	neuronsConnectedToNextLayer := layers last neurons