initialize-release
initializeMerging: aFirstDistribution with: aSecondDistribution
	
	firstDistribution := aFirstDistribution.
	secondDistribution := aSecondDistribution.

	combinationMean := firstDistribution average
		* (secondDistribution variance / (firstDistribution variance + secondDistribution variance))
		+
			(secondDistribution average
				* (firstDistribution variance / (firstDistribution variance + secondDistribution variance))).

	combinationVariance := firstDistribution variance * secondDistribution variance
		/ (firstDistribution variance + secondDistribution variance).

	combinationDistribution := DhbNormalDistribution new: combinationMean sigma: combinationVariance sqrt