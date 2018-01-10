evaluating
cross: parentA overWith: parentB
	| modifiedIndividual |
	modifiedIndividual := OrderedCollection new: parentA genotype size.
	self crossByGen: parentA and: parentB withNewGenDo: [ :gen | modifiedIndividual add: gen ].
	^ NumericIndividual basedOn: (BinaryCodex new fromBinary: modifiedIndividual)