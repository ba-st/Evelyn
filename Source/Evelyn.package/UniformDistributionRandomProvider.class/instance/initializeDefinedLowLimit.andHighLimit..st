initialization
initializeDefinedLowLimit: aNumber andHighLimit: anotherNumber
	lowLimit := aNumber.
	highLimit := anotherNumber.
	uniformDistribution := DhbUniformDistribution from: aNumber to: anotherNumber