initialize-release
initializeBetween: aNeuron and: anotherNeuron configuredBy: aGenotype

	from := aNeuron.
	to := anotherNeuron.
	self express: aGenotype.
	aNeuron handleOutputFrom: self.
	anotherNeuron handleInputFrom: self