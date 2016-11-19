initialize-release
initializeWithRate: aFiringRate dividedInto: aNumberOfMoments
	
	rate := aFiringRate.
	numberOfMoments := aNumberOfMoments.

	probabilityOfFiring := rate / numberOfMoments