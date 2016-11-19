accessing - private
incrementFor: aPotential whenReceiving: aVoltage
	
	additionalResistance resist: aPotential.

	^((restingPotential - aPotential + (membraneResistance * aVoltage) - additionalResistance resistance)
		/ membraneTimeConstant) asFloat