evaluating
cross: parentA overWith: parentB

	| modifiediIvestments |

	modifiediIvestments := OrderedCollection new: parentA investments size.

	parentA investments
		with: parentB investments
		do: [:investmentA :investmentB |

			| psi child |
			psi := randomProvider random.
			child := (((psi * investmentA) + ((1 - psi) * investmentB))) max: 0.

			modifiediIvestments add: child].

	^MixedDrink investing: modifiediIvestments