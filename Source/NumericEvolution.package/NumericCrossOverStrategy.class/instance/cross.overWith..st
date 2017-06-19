evaluating
cross: parentA overWith: parentB
	| modifiedIndividual |
	modifiedIndividual := OrderedCollection new: parentA genotype size.
	parentA genotype
		with: parentB genotype
		do: [ :genA :genB | 
			| psi child |
			psi := randomProvider random.
			child := psi * genA + ((1 - psi) * genB) max: 0.
			modifiedIndividual add: child asInteger ].
	^ NumericIndividual basedOn: (BinaryCodex new fromBinary: modifiedIndividual)