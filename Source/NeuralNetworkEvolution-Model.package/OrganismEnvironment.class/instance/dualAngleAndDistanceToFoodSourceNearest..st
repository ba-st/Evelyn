accessing
dualAngleAndDistanceToFoodSourceNearest: anOrganism

	| organismOccupation |

	organismOccupation := self occupationOf: anOrganism.
	^ foodSources isEmpty
		ifTrue: [ AngleAndDistance ahead ]
		ifFalse: [ | nearest |

			nearest := self dualAngleAndDistanceOf: organismOccupation to: (self occupationOf: foodSources first).
			2 to: foodSources size do: [ :index | 
				| current |

				current := self dualAngleAndDistanceOf: organismOccupation to: (self occupationOf: (foodSources at: index)).
				current < nearest
					ifTrue: [ nearest := current ] ].
			nearest ]