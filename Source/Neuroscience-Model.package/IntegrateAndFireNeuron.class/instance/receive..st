computing
receive: aVoltage
	
	| nonSpikingPotential increment |
	nonSpikingPotential := self nonSpikingPotential.
	increment := self incrementFor: nonSpikingPotential whenReceiving: aVoltage.
	potential := nonSpikingPotential + increment.
	self checkForSpike