processing
moveRight: anAgent

	| currentLocation newLocation |
	currentLocation := self locationOf: anAgent.
	newLocation := (currentLocation x + 1 min: self size) @ currentLocation y.
	self move: anAgent from: currentLocation to: newLocation