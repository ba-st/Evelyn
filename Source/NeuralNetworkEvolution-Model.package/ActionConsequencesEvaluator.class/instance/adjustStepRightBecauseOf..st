environment modifying
adjustStepRightBecauseOf: anOrganism

	| occupation position facing |

	occupation := environment occupationOf: anOrganism.
	position := occupation position.
	facing := occupation facing.
	environment remove: anOrganism from: position.

	[ environment place: anOrganism in: (self compass positionToTheRightOf: position inDirectionOf: facing) facing: facing ]
		on: PositionOutOfBounds
		do: [ :ex | ex return ]