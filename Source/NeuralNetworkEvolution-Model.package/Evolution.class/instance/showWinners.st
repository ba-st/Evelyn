processing
showWinners

	^ parameters generations < parameters generationsTillNewMoves
		ifTrue: [ self showWinnersWithBasicMoves ]
		ifFalse: [ self showWinnersWithEvolvingMoves ]