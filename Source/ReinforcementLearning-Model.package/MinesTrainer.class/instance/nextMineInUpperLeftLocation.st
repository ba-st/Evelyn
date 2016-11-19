accessing - private
nextMineInUpperLeftLocation

	| limit x y |
	limit := (worldSize / 2) ceiling.

	x := (randomNumberProvider random * limit) ceiling min: limit.
	y := limit + (randomNumberProvider random * limit) ceiling min: worldSize.

	^x @ y