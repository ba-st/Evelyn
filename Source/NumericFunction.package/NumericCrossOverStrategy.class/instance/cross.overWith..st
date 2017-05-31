evaluating
cross: parentA overWith: parentB

	| modifiedIndividual |

	modifiedIndividual := OrderedCollection new: parentA genotype genes size.

	parentA genotype genes
		with: parentB genotype genes
		do: [ :investmentA :investmentB | 
			| psi child |

			psi := randomProvider random.
			child := psi * investmentA + ((1 - psi) * investmentB) max: 0.

			modifiedIndividual add: child asInteger ].

	^ NumericIndividual basedOn: (BinaryCodex from: modifiedIndividual)