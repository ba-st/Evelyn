organism building - private
randomMultiLeggedAction

	| possibleActions |

	possibleActions := Action allSubclasses.
	^ (possibleActions at: (RandomProvider instance nextNumberUpTo: possibleActions size)) new