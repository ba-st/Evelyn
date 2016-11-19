occupants handling
remove: anOccupant from: aPosition

	occupations removeAllSuchThat: [ :each | each refersTo: aPosition ]