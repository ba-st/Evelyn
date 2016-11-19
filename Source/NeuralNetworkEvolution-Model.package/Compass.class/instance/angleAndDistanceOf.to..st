accessing
angleAndDistanceOf: anOccupation to: anotherOccupation

	| distance |

	distance := self distanceOf: anOccupation to: anotherOccupation.
	^ AngleAndDistance angle: (self angleOf: anOccupation to: anotherOccupation distanced: distance) distance: distance