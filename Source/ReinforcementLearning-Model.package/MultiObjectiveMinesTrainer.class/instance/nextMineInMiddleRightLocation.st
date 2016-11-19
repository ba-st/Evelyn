accessing - private
nextMineInMiddleRightLocation

	| x y |

	x := worldHalfSize + 2 + (randomNumberProvider random * worldHalfSize) ceiling min: worldSize.
	y := ((randomNumberProvider random * worldSize) ceiling min: worldSize - 2) max: 3.

	^x @ y