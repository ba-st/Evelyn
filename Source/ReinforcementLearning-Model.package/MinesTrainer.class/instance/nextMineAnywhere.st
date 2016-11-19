accessing - private
nextMineAnywhere

	| x y |

	x := (randomNumberProvider random * worldSize) ceiling min: worldSize.
	y := (randomNumberProvider random * worldSize) ceiling min: worldSize.

	^x @ y