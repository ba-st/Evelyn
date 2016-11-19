initialize-release
restartWithSeed: aNumber

	randomGeneProvider := Random new
		seed: aNumber;
		yourself.
	randomNumberProvider := Random new
		seed: aNumber;
		yourself