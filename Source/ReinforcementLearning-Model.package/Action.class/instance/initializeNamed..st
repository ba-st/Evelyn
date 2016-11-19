initialize-release
initializeNamed: aName

	name := aName.
	messageSymbol := ('reactTo<1s>DoneBy:' expandMacrosWith: self safeName) asSymbol