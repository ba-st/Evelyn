building - private
freeRandomPositionIn: anEnvironment

	| position |

	[ position := self randomPositionIn: anEnvironment.
	anEnvironment hasSomethingIn: position ] whileTrue.
	^ position