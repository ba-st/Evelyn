accessing
hasSomethingIn: aPosition

	^ occupations anySatisfy: [ :each | each refersTo: aPosition ]