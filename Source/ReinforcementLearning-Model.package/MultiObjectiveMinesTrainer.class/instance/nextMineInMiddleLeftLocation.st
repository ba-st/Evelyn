accessing - private
nextMineInMiddleLeftLocation

	| x y |

	x := (randomNumberProvider random * worldHalfSize) ceiling min: worldHalfSize - 2.
	y := ((randomNumberProvider random * worldSize) ceiling min: worldSize - 2) max: 3.

	^x @ y