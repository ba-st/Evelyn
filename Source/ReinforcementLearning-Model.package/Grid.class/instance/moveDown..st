processing
moveDown: anAgent

	| currentLocation newLocation |
	currentLocation := self locationOf: anAgent.
	newLocation := currentLocation x @ (currentLocation y - 1 max: 1).

	self move: anAgent from: currentLocation to: newLocation