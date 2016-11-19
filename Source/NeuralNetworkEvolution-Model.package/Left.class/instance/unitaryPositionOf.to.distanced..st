computing
unitaryPositionOf: aDistance to: anOccupation distanced: anotherOccupation

	^ Position x: (anOccupation position x - anotherOccupation position x) / aDistance y: (anotherOccupation position y - anOccupation position y) / aDistance