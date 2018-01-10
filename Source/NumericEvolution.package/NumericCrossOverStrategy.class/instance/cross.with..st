private - evaluating
cross: genA with: genB
	| psi child |
	psi := randomProvider random.
	child := psi * genA + ((1 - psi) * genB) max: 0.
	^child asInteger 