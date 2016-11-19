accessing - private
occupationOf: anOccupant

	^ occupations detect: [ :each | each occupant = anOccupant ] ifNone: [ PositionOutOfBounds signal: 'Invalid Position Reached' ]