processing - private
reactToMoveLeftDoneBy: anAgent

	| direction |
	direction := randomNumberProvider random.

	direction < (1 / 10) ifTrue: [^environment reactTo: (Action named: 'Move Up') doneBy: anAgent].
	^environment reactTo: (Action named: 'Move Left') doneBy: anAgent