instance creation
using: aNumberOfNeurons connectedTo: aNeuronsCollection configuredBy: aGenotype

	^ self new initializeWith: (self neuronCollectionOf: aNumberOfNeurons connectedTo: aNeuronsCollection configuredBy: aGenotype)