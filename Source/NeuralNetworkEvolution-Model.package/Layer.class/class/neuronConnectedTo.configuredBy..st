accessing - private
neuronConnectedTo: aNeuronsCollection configuredBy: aGenotype

	| newNeuron |

	newNeuron := ComputingNeuron configuredBy: aGenotype.
	aNeuronsCollection do: [ :eachPresynapticNeuron | SynapticConnection between: eachPresynapticNeuron and: newNeuron configuredBy: aGenotype ].
	^ newNeuron