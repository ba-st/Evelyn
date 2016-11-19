accessing
inhabitantLocations

	| locations |
	locations := Dictionary new.

	inhabitants
		do: [:inhabitant | locations at: inhabitant put: (grid locationOf: inhabitant)].

	^locations