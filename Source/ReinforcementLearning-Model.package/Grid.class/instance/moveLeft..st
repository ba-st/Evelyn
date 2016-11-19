processing
moveLeft: anAgent

	| currentLocation newLocation |
	currentLocation := self locationOf: anAgent.
	newLocation := (currentLocation x - 1 max: 1) @ currentLocation y.

	self move: anAgent from: currentLocation to: newLocation