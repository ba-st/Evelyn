accessing
distanceOf: anOccupation to: anotherOccupation

	"Euclidean distance"

	^ ((anOccupation position y - anotherOccupation position y) squared + (anOccupation position x - anotherOccupation position x) squared) sqrt