accessing - private
nonSpikingPotential
	
	^potential = spikePotential ifTrue: [resetPotential] ifFalse: [potential]