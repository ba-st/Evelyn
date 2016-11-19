accessing - private
nextMineInLowerRightLocation

	| limit x y |
	limit := (worldSize / 2) ceiling.

	x := limit + (randomNumberProvider random * limit) ceiling min: worldSize.
	y := (randomNumberProvider random * limit) ceiling min: limit.

	^x @ y