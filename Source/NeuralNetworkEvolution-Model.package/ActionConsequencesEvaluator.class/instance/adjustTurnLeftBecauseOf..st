environment modifying
adjustTurnLeftBecauseOf: anOrganism

	self make: anOrganism face: (self compass leftOf: (environment facingOf: anOrganism))