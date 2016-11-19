environment modifying
adjustMoveBackwardsBecauseOf: anOrganism

	| occupation position facing |

	occupation := environment occupationOf: anOrganism.
	position := occupation position.
	facing := occupation facing.
	environment remove: anOrganism from: position.

	[ environment place: anOrganism in: (self compass positionBehind: position inDirectionOf: facing) facing: facing ]
		on: PositionOutOfBounds
		do: [ :ex | ex return ]