processing - private
reactToMoveRightDoneBy: anAgent

	| direction |
	direction := randomNumberProvider random.

	direction < (2 / 10) ifTrue: [^environment reactTo: (Action named: 'Move Left') doneBy: anAgent].
	direction < (3 / 10) ifTrue: [^environment reactTo: (Action named: 'Move Up') doneBy: anAgent].
	^environment reactTo: (Action named: 'Move Right') doneBy: anAgent