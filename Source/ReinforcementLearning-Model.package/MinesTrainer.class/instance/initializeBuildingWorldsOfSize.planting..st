initialize-release
initializeBuildingWorldsOfSize: anInteger planting: aNumberOfMines

	worldSize := anInteger.
	numberOfMines := aNumberOfMines.

	randomNumberProvider := DhbUniformDistribution new