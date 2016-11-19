accessing
generationsTillNewMoves

	generationsTillNewMoves
		ifNil: [ self generationsTillNewMoves: (self generations / 2) floor ].
	^ generationsTillNewMoves