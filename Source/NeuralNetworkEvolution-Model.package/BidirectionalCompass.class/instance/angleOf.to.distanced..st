accessing
angleOf: anOccupation to: anotherOccupation distanced: aDistance

	"Angle (measured positive - negative with 0 -> 0, 180 -> 1/-1, from anOccupation's facing direction)"

	^ anOccupation facing angleOf: anOccupation to: anotherOccupation distanced: aDistance