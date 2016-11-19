accessing - private
neuronCollectionOf: aNumberOfNeurons connectedTo: aNeuronsCollection configuredBy: aGenotype

	| neuronsToUse |

	neuronsToUse := OrderedCollection new.
	aNumberOfNeurons timesRepeat: [ neuronsToUse add: (self neuronConnectedTo: aNeuronsCollection configuredBy: aGenotype) ].
	^ neuronsToUse