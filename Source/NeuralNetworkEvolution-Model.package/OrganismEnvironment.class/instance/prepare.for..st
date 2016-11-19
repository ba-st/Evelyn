occupants handling - private
prepare: aPosition for: anOccupant

	(occupations select: [ :each | each refersTo: aPosition ])
		do: [ :each | 
			self notifyCollisionOf: anOccupant with: each occupant.
			self remove: each occupant from: aPosition ]