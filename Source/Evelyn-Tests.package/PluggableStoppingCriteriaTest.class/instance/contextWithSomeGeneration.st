accessing
contextWithSomeGeneration
	| context |
	context := self context.
	context changeCurrentGenerationTo: self someGeneration.
	^ context