computing
unitaryPositionOf: aDistance to: anOccupation distanced: anotherOccupation

	^ Position x: (anotherOccupation position x - anOccupation position x) / aDistance y: (anOccupation position y - anotherOccupation position y) / aDistance