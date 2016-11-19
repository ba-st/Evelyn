initialize-release
initializeBuildingWorldsOfSize: anInteger planting: aNumberOfMines

	worldSize := anInteger.
	worldHalfSize := (worldSize / 2) ceiling.
	numberOfMines := aNumberOfMines.

	randomNumberProvider := DhbUniformDistribution new