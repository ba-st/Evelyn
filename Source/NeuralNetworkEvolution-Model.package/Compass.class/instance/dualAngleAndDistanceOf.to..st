accessing
dualAngleAndDistanceOf: anOccupation to: anotherOccupation

	| distance |

	distance := self distanceOf: anOccupation to: anotherOccupation.
	^ AngleAndDistance angle: (self dualAngleOf: anOccupation to: anotherOccupation distanced: distance) distance: distance