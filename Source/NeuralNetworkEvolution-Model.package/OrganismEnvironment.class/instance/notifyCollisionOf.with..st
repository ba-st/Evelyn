occupants handling - private
notifyCollisionOf: anOccupant with: anotherOccupant

	anOccupant notify: selection aboutCollisionWith: anotherOccupant.
	foodSources
		remove: anOccupant ifAbsent: [  ];
		remove: anotherOccupant ifAbsent: [  ]