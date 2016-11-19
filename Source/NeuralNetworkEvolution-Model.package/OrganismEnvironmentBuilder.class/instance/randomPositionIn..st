building - private
randomPositionIn: anEnvironment

	^ Position x: (RandomProvider instance nextNumberUpTo: anEnvironment width) y: (RandomProvider instance nextNumberUpTo: anEnvironment height)