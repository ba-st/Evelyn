processing
actionWhenIn: aState of: anEnvironment

	self adjustTo: anEnvironment.

	^ environment actionWhenIn: aState