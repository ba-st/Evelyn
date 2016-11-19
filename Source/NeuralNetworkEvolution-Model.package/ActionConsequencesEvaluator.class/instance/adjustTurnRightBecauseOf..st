environment modifying
adjustTurnRightBecauseOf: anOrganism

	self make: anOrganism face: (self compass rightOf: (environment facingOf: anOrganism))