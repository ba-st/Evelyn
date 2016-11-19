processing
moveUp: anAgent

	| currentLocation newLocation |
	currentLocation := self locationOf: anAgent.
	newLocation := currentLocation x @ (currentLocation y + 1 min: self size).

	self move: anAgent from: currentLocation to: newLocation