environment modifying
adjustTurnAroundBecauseOf: anOrganism

	self make: anOrganism face: (self compass leftOf: (self compass leftOf: (environment facingOf: anOrganism)))