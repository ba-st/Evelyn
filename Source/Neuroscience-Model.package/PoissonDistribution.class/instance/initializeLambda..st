information
initializeLambda: aLambda
	
	lambda := aLambda.

	randomProvider := DhbUniformDistribution new.
	eRaisedToMinusLambda := lambda negated exp