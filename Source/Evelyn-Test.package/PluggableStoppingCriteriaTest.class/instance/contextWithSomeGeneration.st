accessing
contextWithSomeGeneration
	| context |
	context := self context.
	context currentGenerationChangeTo: self someGeneration.
	^ context