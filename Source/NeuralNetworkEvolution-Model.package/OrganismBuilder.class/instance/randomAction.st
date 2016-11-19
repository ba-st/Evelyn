organism building - private
randomAction

	| possibleActions |

	possibleActions := OrderedCollection
		with: TurnLeft
		with: TurnRight
		with: DoNothing
		with: MoveForward.
	^ (possibleActions at: (RandomProvider instance nextNumberUpTo: possibleActions size)) new